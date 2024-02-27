package org.fbme.ide.integration.fordiac.lua

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.expressions.LiteralKind.*
import org.fbme.lib.st.statements.*


object BasicFBTypeLuaTranslator {
    private const val FB_DI_FLAG = 33554432
    private const val FB_DO_FLAG = 67108864
    private const val FB_AEO_FLAG = 134217728
    private const val FB_ADI_FLAG = 167772160
    private const val FB_ADO_FLAG = 201326592
    private const val FB_IN_FLAG = 268435456
    private const val FB_AEI_FLAG = 805306368
    private const val NEW_LINE: String = "\n"

    private val sb = StringBuilder()
    private val memorizedFBData = FBCache()

    private class FBCache {
        var inputData: Set<String> = emptySet() // it is LinkedHashSet, we need the order
        var outputData: Set<String> = emptySet() // it is LinkedHashSet, we need the order
        var internal: Set<String> = emptySet()
        var sockets: Set<String> = emptySet()
        var plugs: Set<String> = emptySet()
        var adapterIdToIsInput: Map<Identifier?, Boolean> = emptyMap()
        var adapterEvents: MutableSet<Identifier> = mutableSetOf()

        fun memorize(fbTypeDeclaration: BasicFBTypeDeclaration) {
            inputData = fbTypeDeclaration.inputParameters.names()
            outputData = fbTypeDeclaration.outputParameters.names()
            internal = fbTypeDeclaration.internalVariables.names()
            sockets = fbTypeDeclaration.sockets.names()
            plugs = fbTypeDeclaration.plugs.names()

            adapterIdToIsInput = calculateAdapterIdToIsInput(fbTypeDeclaration)
            adapterEvents = calculateAdapterEvents(fbTypeDeclaration)
        }

        private fun calculateAdapterIdToIsInput(fbTypeDeclaration: BasicFBTypeDeclaration): Map<Identifier?, Boolean> {
            val idToIsInput = { port: FBPortDescriptor -> port.declaration?.identifier to port.isInput }
            val socketIdToIsInput = fbTypeDeclaration.typeDescriptor.socketPorts.associate(idToIsInput)
            val plugIdToIsInput = fbTypeDeclaration.typeDescriptor.socketPorts.associate(idToIsInput)
            return socketIdToIsInput + plugIdToIsInput
        }

        private fun calculateAdapterEvents(fbTypeDeclaration: BasicFBTypeDeclaration): MutableSet<Identifier> {
            val adapterEvents = mutableSetOf<Identifier>()
            fbTypeDeclaration.sockets.forEach { socket ->
                adapterEvents.addAll(socket.typeReference.getTarget()?.inputEvents?.map { it.identifier } ?: listOf())
            }
            return adapterEvents
        }

        private fun <T : Declaration> MutableList<T>.names() = this.map { it.name }.toSet()

        fun clear() {
            inputData = emptySet()
            outputData = emptySet()
            internal = emptySet()
            sockets = emptySet()
            plugs = emptySet()
            adapterIdToIsInput = emptyMap()
            adapterEvents = mutableSetOf()
        }

        fun adapterPrefixByEventId(id: Identifier, adapterPrefix: String, defaultPrefix: String) =
            if (this.adapterEvents.contains(id)) adapterPrefix else defaultPrefix
    }

    private fun clear() {
        sb.clear()
        memorizedFBData.clear()
    }

    fun translate(fbTypeDeclaration: BasicFBTypeDeclaration): String {
        memorizedFBData.memorize(fbTypeDeclaration)
        addConstants(fbTypeDeclaration)
        addAlgorithms(fbTypeDeclaration)
        addECC(fbTypeDeclaration)
        addInterfaceSpec(fbTypeDeclaration)
        addInternalVarsInformation(fbTypeDeclaration)

        val res = sb.toString()
        clear()

        return res
    }

    private fun addConstants(fbTypeDeclaration: BasicFBTypeDeclaration) {
        sb.append("local FB_STATE = 0$NEW_LINE")

        for (state in fbTypeDeclaration.ecc.states) {
            sb.append("local ECC_${state.name} = ${state.index()}$NEW_LINE")
        }

        val addEventVars = { events: List<FBPortDescriptor>, varPrefix: String ->
            events.fold(sb) { _, event ->
                val varName = "$varPrefix${event.name}"
                sb.append("local $varName = ${event.position}$NEW_LINE")
            }
        }

        addEventVars(fbTypeDeclaration.typeDescriptor.eventInputPorts, "EI_")
        addEventVars(fbTypeDeclaration.typeDescriptor.eventOutputPorts, "EO_")

        val addVars = { vars: List<FBPortDescriptor>, prefix: String, flag: Int ->
            vars.forEach {
                sb.append("local $prefix${it.name} = ${flag or it.position}$NEW_LINE")
            }
        }

        addVars(fbTypeDeclaration.typeDescriptor.dataInputPorts, "DI_", FB_DI_FLAG)
        addVars(fbTypeDeclaration.typeDescriptor.dataOutputPorts, "DO_", FB_DO_FLAG)

        run {
            val plugs = fbTypeDeclaration.typeDescriptor.plugPorts
            val sockets = fbTypeDeclaration.typeDescriptor.socketPorts

            addAdapterConstants(adapterPorts = sockets, offset = plugs.size)
            addAdapterConstants(adapterPorts = plugs, offset = 0)
        }

        fbTypeDeclaration.internalVariables.forEach {
            sb.append("local IN_${it.name} = ${FB_IN_FLAG or it.index()}$NEW_LINE")
        }

        sb.append(NEW_LINE)
    }

    private fun addAdapterConstants(adapterPorts: List<FBPortDescriptor>, offset: Int) {
        adapterPorts.forEach { portDescriptor ->
            val adapterId = portDescriptor.position + offset

            (portDescriptor.declaration as? AdapterTypeDeclaration)?.socketTypeDescriptor?.let {
                sb.append(NEW_LINE)

                val addConstants = { descriptors: List<FBPortDescriptor>, varPrefix: String, flag: Int ->
                    descriptors.forEach { descriptor ->
                        sb.append("local $varPrefix${portDescriptor.name}_${descriptor.name} = ")
                        sb.append("${(flag or (adapterId shl 16)) or descriptor.position}$NEW_LINE")
                    }
                }

                with(it) {
                    addConstants(eventOutputPorts, "AEO_", FB_AEO_FLAG)
                    addConstants(eventInputPorts, "AEI_", FB_AEI_FLAG)
                    addConstants(dataOutputPorts, "ADO_", FB_ADO_FLAG)
                    addConstants(dataInputPorts, "ADI_", FB_ADI_FLAG)
                }
            }
        }
    }


    private fun addVarsPrefix(prefix: String, varNames: Iterable<String>) {
        varNames.forEach {
            sb.append("  local VAR_${it} = fb[$prefix${it}]$NEW_LINE")
        }
    }

    private fun addAdapterVarPrefix(param: ParameterDeclaration, adapterName: String, prefix: String) {
        sb.append("local VAR_${adapterName}_${param.name} = fb[$prefix${adapterName}_${param.name}]$NEW_LINE")
    }

    private fun addAdapterVarSuffix(param: ParameterDeclaration, adapterName: String, prefix: String) {
        sb.append("fb[$prefix${adapterName}_${param.name}] = VAR_${adapterName}_${param.name}$NEW_LINE")
    }

    private fun List<ParameterDeclaration>?.addAdapterVars(
        adapterName: String,
        prefix: String,
        addParamFunc: (param: ParameterDeclaration, adapterName: String, prefix: String) -> Unit
    ) = this?.forEach { param -> addParamFunc(param, adapterName, prefix) }


    private fun addAlgorithms(fbTypeDeclaration: BasicFBTypeDeclaration) {
        fbTypeDeclaration.algorithms.forEach { alg ->
            (alg.body as? AlgorithmBody.ST)?.let { stBody ->

                sb.append("local function alg_${alg.name}(fb)$NEW_LINE")

                val usedVarNames = stBody.statements
                    .filterIsInstance<AssignmentStatement>()
                    .mapNotNull {
                        when (val v = it.variable) {
                            is VariableReference -> {
                                v.reference.getTarget()?.name
                            }

                            is ArrayVariable -> {
                                (v.subscribedVariable as? VariableReference)
                                    ?.reference?.getTarget()?.name
                            }

                            null -> null
                        }
                    }

                // intersect fb vars with alg vars and work with this set
                val usedInputVarNames = usedVarNames.filter { memorizedFBData.inputData.contains(it) }
                val usedOutputVarNames = usedVarNames.filter { memorizedFBData.outputData.contains(it) }
                val usedInternalVarNames = usedVarNames.filter { memorizedFBData.internal.contains(it) }

                addVarsPrefix(prefix = "DI_", usedInputVarNames)
                addVarsPrefix(prefix = "DO_", usedOutputVarNames)
                addVarsPrefix(prefix = "IN_", usedInternalVarNames)

                val addAdapterVarAssignments = { adapter: AdapterTypeDeclaration, isPrefix: Boolean ->
                    var inputPrefix = "ADI_"
                    var outputPrefix = "ADO_"
                    if (memorizedFBData.adapterIdToIsInput[adapter.identifier] == true) {
                        inputPrefix = "ADO_"
                        outputPrefix = "ADI_"
                    }
                    val addAdapterParamFunc = if (isPrefix) ::addAdapterVarPrefix else ::addAdapterVarSuffix
                    adapter.inputParameters.addAdapterVars(adapter.name, inputPrefix, addAdapterParamFunc)
                    adapter.outputParameters.addAdapterVars(adapter.name, outputPrefix, addAdapterParamFunc)
                }

                fbTypeDeclaration.sockets.forEach { socket ->
                    socket.typeReference.getTarget()?.let { addAdapterVarAssignments(it, true) }
                }
                fbTypeDeclaration.plugs.forEach { plug ->
                    plug.typeReference.getTarget()?.let { addAdapterVarAssignments(it, true) }
                }

                alg.temporaryVariables.forEach {
                    sb.append("  local VAR_${it.name}")

                    if (it.initialValue != null) {
                        sb.append(" = ${it.initialValue}")
                    }

                    sb.append(NEW_LINE)
                }

                stBody.statements.forEach { addStatement(it, "  ") }

                usedOutputVarNames.forEach {
                    sb.append("  fb[DO_${it}] = VAR_${it}$NEW_LINE")
                }

                usedInternalVarNames.forEach {
                    sb.append("  fb[IN_${it}] = VAR_${it}$NEW_LINE")
                }

                fbTypeDeclaration.sockets.forEach {
                    it.typeReference.getTarget()?.let { it1 -> addAdapterVarAssignments(it1, false) }
                }
                fbTypeDeclaration.plugs.forEach {
                    it.typeReference.getTarget()?.let { it1 -> addAdapterVarAssignments(it1, false) }
                }
            } ?: throw IllegalStateException("Language not supported for algorithm ${alg.name}")

            sb.append("end$NEW_LINE$NEW_LINE")
        }
    }

    private fun addStatement(statement: Statement, indent: String) {
        sb.append(indent)

        val addStatementSequence = { statements: List<Statement>, indent: String ->
            statements.forEach { addStatement(statement = it, indent = indent) }
        }

        when (statement) {
            is AssignmentStatement -> {
                statement.variable?.let { v ->
                    addExpression(v)
                    sb.append(" = ")
                    statement.expression?.let { expr -> addExpression(expr) }
                        ?: throw NullPointerException("Expected expression after variable '$v'")
                }
            }

            is ExitStatement -> {
                sb.append("break")
            }

            is ForStatement -> {
                sb.append("for VAR_${statement.controlVariable.name} = ")
                statement.controlVariable.beginExpression?.let { addExpression(it) }
                sb.append(", ")
                statement.controlVariable.endExpression?.let { addExpression(it) }
                statement.controlVariable.stepExpression?.let {
                    sb.append(", ")
                    addExpression(it)
                }
                sb.append(" do$NEW_LINE")
                addStatementSequence(statement.statements, "$indent  ")
                sb.append("${indent}end")
            }

            is CaseStatement -> {
                sb.append("local function case(val)$NEW_LINE")
                statement.cases.forEach { clause ->
                    sb.append("$indent  ")
                    if (clause.index() == 0) {
                        sb.append("if ")
                    } else {
                        sb.append("elseif ")
                    }
                    sb.append("val == ")
                    clause.literal?.let { addExpression(it) }
                        ?: throw NullPointerException(
                            "Expected case literal in position ${clause.index()} of ${statement.expression}"
                        )
                    sb.append(" then$NEW_LINE")

                    addStatementSequence(clause.statements, "$indent    ")
                }

                statement.elseCase?.let {
                    sb.append("$indent  else$NEW_LINE")
                    it.forEach { statement -> addStatement(statement, "$indent    ") }
                }

                sb.append("$indent  end$NEW_LINE")
                sb.append("${indent}end$NEW_LINE")
                sb.append("${indent}case(")
                statement.expression?.let { addExpression(it) }
                sb.append(")$NEW_LINE")
            }

            is RepeatStatement -> {
                sb.append("repeat$NEW_LINE")
                addStatementSequence(statement.body, "$indent  ")
                sb.append("${indent}until ")
                statement.condition?.let { addExpression(it) }
            }

            is IfStatement -> {
                sb.append("if ")
                statement.condition?.let { addExpression(it) }
                sb.append(" then$NEW_LINE")
                addStatementSequence(statement.thenClause, "$indent  ")

                statement.elseIfClauses.forEach { clause ->
                    sb.append("${indent}elseif ")
                    clause.condition?.let { addExpression(it) }
                    sb.append(" then$NEW_LINE")
                    addStatementSequence(clause.body, "$indent  ")
                    sb.append(NEW_LINE)
                }

                statement.elseClause?.let { clause ->
                    sb.append("${indent}else $NEW_LINE")
                    addStatementSequence(clause, "$indent  ")
                    sb.append(NEW_LINE)
                }

                sb.append("${indent}end")
            }

            is EmptyStatement -> {
            }

            is ReturnStatement -> {
                sb.append("return")
            }

            is WhileStatement -> {
                sb.append("while ")
                statement.condition?.let { addExpression(it) }
                sb.append(" do$NEW_LINE")
                addStatementSequence(statement.body, "$indent  ")
                sb.append("${indent}end")
            }
        }

        sb.append(NEW_LINE)
    }

    private fun addExpression(expr: Expression) {
        when (expr) {
            is BinaryExpression -> {
                sb.append("(")
                expr.leftExpression?.let { addExpression(it) }
                sb.append(" ${expr.operation.luaAlias} ")
                expr.rightExpression?.let { addExpression(it) }
                sb.append(")")
            }

            is UnaryExpression -> {
                sb.append(expr.operation.luaAlias)
                if (expr.operation.isSpaced) {
                    sb.append(" ")
                }
                expr.getInnerExpression()?.let {
                    sb.append("(")
                    addExpression(it)
                    sb.append(")")
                }
            }

            is ParenthesisExpression -> {
                addExpression(expr.innerExpression)
            }

            is Literal<*> -> {
                when (expr.kind) {
                    BINARY_BOOL, BOOL -> {
                        sb.append(if (expr.value as Boolean) "true" else "false")
                    }

                    STRING, WSTRING -> {
                        sb.append("\"${expr.value as String}\"")
                    }

                    BINARY_INT, DEC_INT, HEX_INT, OCT_INT, TIME, REAL -> {
                        sb.append(expr.value)
                    }

                    /*
                    `expr.value` is empty string
                     https://github.com/JetBrains/fbme/issues/13
                     */
                    null -> throw IllegalStateException("Unknown literal type with value: ${expr.value}")
                }
            }

            is Variable -> {
                when (expr) {
                    is VariableReference -> {
                        (expr.reference.getTarget()?.name)?.let {
                            sb.append("VAR_${it}")
                        } ?: throw NullPointerException("Can not find variable name: '${expr.reference.presentation}'")
                    }

                    is ArrayVariable -> {
                        expr.subscribedVariable?.let {
                            addExpression(it)
                            expr.subscripts.filterNotNull().forEach { subscript ->
                                sb.append("[(")
                                addExpression(subscript)
                                sb.append(") + 1]")
                            }
                        }
                            ?: throw NullPointerException("Can not find variable name for array: '${expr.subscripts.joinToString()}'")
                    }
                }
            }

            is FunctionCall -> {
                sb.append("${expr.functionName}(")

                expr.actualParameters.filterNotNull().let {
                    it.forEachIndexed { ind, e ->
                        addExpression(e)
                        if (ind != it.lastIndex) {
                            sb.append(", ")
                        }
                    }
                }

                sb.append(")")
            }
        }
    }


    private fun addECC(fbTypeDeclaration: BasicFBTypeDeclaration) {
        fbTypeDeclaration.ecc.states.forEach { state ->
            sb.append("local function enterECC_${state.name}(fb)$NEW_LINE")
            sb.append("  fb[FB_STATE] = ECC_${state.name}$NEW_LINE")

            state.actions.forEach { action ->
                (action.algorithm.getTarget()?.name).let { sb.append("  alg_$it(fb)$NEW_LINE") }
                    ?: throw NullPointerException("Can not find name of algorithm in ECC with state = '${state.name}'")

                action.event.getTarget()?.portTarget?.let {
                    val prefix = memorizedFBData.adapterPrefixByEventId(it.identifier, "AEO_", "EO_")
                    sb.append("  fb($prefix${it.name})$NEW_LINE")
                }
            }

            sb.append("  return true${NEW_LINE}end$NEW_LINE$NEW_LINE")
        }

        sb.append("local function transition(fb, id)$NEW_LINE")
        sb.append("  local STATE = fb[FB_STATE]$NEW_LINE")

        addVarsPrefix(prefix = "DI_", memorizedFBData.inputData)
        addVarsPrefix(prefix = "DO_", memorizedFBData.outputData)
        addVarsPrefix(prefix = "IN_", memorizedFBData.internal)

        val addAdapterVarAssignments = { adapter: AdapterTypeDeclaration, isSocket: Boolean ->
            var inputPrefix = "ADI_"
            var outputPrefix = "ADO_"
            if (isSocket) {
                inputPrefix = "ADO_"
                outputPrefix = "ADI_"
            }
            adapter.inputParameters.addAdapterVars(adapter.name, inputPrefix, ::addAdapterVarPrefix)
            adapter.outputParameters.addAdapterVars(adapter.name, outputPrefix, ::addAdapterVarPrefix)
        }

        fbTypeDeclaration.sockets.forEach { socket ->
            socket.typeReference.getTarget()?.let { addAdapterVarAssignments(it, true) }
        }
        fbTypeDeclaration.plugs.forEach { plug ->
            plug.typeReference.getTarget()?.let { addAdapterVarAssignments(it, false) }
        }

        var noElements = true
        fbTypeDeclaration.ecc.states.forEach { state ->
            if (noElements) {
                noElements = false
                sb.append("  if ")
            } else {
                sb.append("$NEW_LINE  elseif ")
            }
            sb.append("ECC_${state.name} == STATE then$NEW_LINE")
            val outTransitions = fbTypeDeclaration.ecc.transitions
                .filter { t -> t.sourceReference.getTarget()?.name == state.name }

            var noTransitions = true
            outTransitions.forEach { transition ->
                if (noTransitions) {
                    noTransitions = false
                    sb.append("    if ")
                } else {
                    sb.append("$NEW_LINE    elseif ")
                }
                val conditionEvent = transition.condition.eventReference.getTarget()?.portTarget

                conditionEvent?.let {
                    val prefix = memorizedFBData.adapterPrefixByEventId(conditionEvent.identifier, "AEI_", "EI_")
                    sb.append("$prefix${conditionEvent.name} == id") // see generateEventVariableName(...)
                } ?: sb.append("true")

                sb.append(" and ")
                transition.condition.getGuardCondition()?.let { addExpression(it) } ?: sb.append("true")
                sb.append(" then return enterECC_${transition.targetReference.getTarget()?.name}(fb)")
            }

            if (!noTransitions) {
                sb.append("$NEW_LINE    else return false${NEW_LINE}    end")
            }
        }

        if (!noElements) {
            sb.append("$NEW_LINE  else return false${NEW_LINE}  end")
        }

        sb.append("${NEW_LINE}end$NEW_LINE${NEW_LINE}local function executeEvent(fb, id)$NEW_LINE")
        sb.append("  local modified = transition(fb, id)$NEW_LINE")
        sb.append("  while modified do$NEW_LINE")
        sb.append("    modified = transition(fb, -1)$NEW_LINE")
        sb.append("  end$NEW_LINE")
        sb.append("end$NEW_LINE$NEW_LINE")
    }

    private fun addInterfaceSeq(values: Iterable<String>, transformValue: (String) -> String = { it }) =
        sb.append(values.joinToString(", ", "{", "}") { transformValue(it) })

    private fun addInterfaceSpec(fbTypeDeclaration: BasicFBTypeDeclaration) {
        sb.append("local interfaceSpec = {$NEW_LINE")
        sb.append("  numEIs = ${fbTypeDeclaration.inputEvents.size},$NEW_LINE")
        sb.append("  EINames = ")
        val inputEventNames = fbTypeDeclaration.inputEvents.map { it.name } // todo: copy paste 1
        addInterfaceSeq(inputEventNames) { "\"$it\"" }

        val calcEventPortWith = { events: List<EventDeclaration>, portNames: Set<String> ->
            val eventPortWithIndices = mutableListOf<Int>()
            val eventPortWith = mutableListOf<Int>()

            events.forEach { event ->
                eventPortWithIndices.add(
                    if (event.associations.isEmpty()) {
                        -1
                    } else {
                        eventPortWith.size
                    }
                )
                event.associations.forEach { assoc ->
                    // indexOf is correct, because memorizedFBData.input is LinkedHashSet which saves the order
                    eventPortWith.add(portNames.indexOf(assoc.parameterReference.getTarget()?.name))
                }
                if (event.associations.isNotEmpty()) {
                    eventPortWith.add(255)
                }
            }

            eventPortWith to eventPortWithIndices
        }

        val (eventInputWith, eventInputWithIndices) = calcEventPortWith(
            fbTypeDeclaration.inputEvents,
            memorizedFBData.inputData
        )

        sb.append(",${NEW_LINE}  EIWith = ")
        addInterfaceSeq(eventInputWith.map { it.toString() })

        sb.append(", $NEW_LINE  EIWithIndexes = ")
        addInterfaceSeq(eventInputWithIndices.map { it.toString() })

        sb.append(", $NEW_LINE  numEOs = ${fbTypeDeclaration.outputEvents.size},$NEW_LINE")
        sb.append("  EONames = ")
        val outputEventNames = fbTypeDeclaration.outputEvents.map { it.name }
        addInterfaceSeq(outputEventNames) { "\"$it\"" }

        val (eventOutputWith, eventOutputWithIndices) = calcEventPortWith(
            fbTypeDeclaration.outputEvents,
            memorizedFBData.outputData
        )

        sb.append(",$NEW_LINE  EOWith = ")
        addInterfaceSeq(eventOutputWith.map { it.toString() })

        sb.append(",$NEW_LINE  EOWithIndexes = ")
        addInterfaceSeq(eventOutputWithIndices.map { it.toString() })

        sb.append(",$NEW_LINE  numDIs = ${fbTypeDeclaration.typeDescriptor.dataInputPorts.size},$NEW_LINE")
        sb.append("  DINames = ")
        addInterfaceSeq(fbTypeDeclaration.typeDescriptor.dataInputPorts.map { it.name }) { "\"$it\"" }
        sb.append(",$NEW_LINE  DIDataTypeNames = ")
        addInterfaceSeq(fbTypeDeclaration.inputParameters.map {
            it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
        }) { "\"$it\"" }

        sb.append(",$NEW_LINE  numDOs = ${fbTypeDeclaration.typeDescriptor.dataOutputPorts.size},$NEW_LINE")
        sb.append("  DONames = ")
        addInterfaceSeq(fbTypeDeclaration.typeDescriptor.dataOutputPorts.map { it.name }) { "\"$it\"" }
        sb.append(",$NEW_LINE  DODataTypeNames = ")
        addInterfaceSeq(fbTypeDeclaration.outputParameters.map {
            it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
        }) { "\"$it\"" }

        sb.append(",$NEW_LINE  numAdapters = ${fbTypeDeclaration.sockets.size + fbTypeDeclaration.plugs.size},$NEW_LINE")
        sb.append("  adapterInstanceDefinition = {$NEW_LINE")

        fbTypeDeclaration.plugs.forEach {
            sb.append("    {adapterNameID = \"${it.name}\", ")
            sb.append("adapterTypeNameID \"${it.type.typeName}\", isPlug = true}$NEW_LINE")
        }

        fbTypeDeclaration.sockets.forEach {
            sb.append("    {adapterNameID = \"${it.name}\", ")
            sb.append("adapterTypeNameID \"${it.type.typeName}\", isPlug = false}$NEW_LINE")
        }

        sb.append("  }$NEW_LINE")
        sb.append("}$NEW_LINE$NEW_LINE")
    }

    private fun addInternalVarsInformation(fbTypeDeclaration: BasicFBTypeDeclaration) {
        sb.append("local internalVarsInformation = {$NEW_LINE")
        sb.append("  numIntVars = ${fbTypeDeclaration.internalVariables.size},$NEW_LINE")
        sb.append("  intVarsNames = ")
        addInterfaceSeq(fbTypeDeclaration.internalVariables.map { it.name }) { "\"$it\"" }

        sb.append(",$NEW_LINE  intVarsDataTypeNames = ")
        addInterfaceSeq(fbTypeDeclaration.internalVariables.map {
            it.type?.stringify() ?: throw NullPointerException("Can not find type of '${it.name}' internal variable")
        }) { "\"$it\"" }

        sb.append("$NEW_LINE}$NEW_LINE$NEW_LINE")
        sb.append("return {ECC = executeEvent, interfaceSpec = interfaceSpec, internalVarsInformation = internalVarsInformation}$NEW_LINE")
    }
}
