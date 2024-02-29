package org.fbme.ide.integration.fordiac.lua

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.expressions.BinaryOperation.*
import org.fbme.lib.st.expressions.LiteralKind.*
import org.fbme.lib.st.expressions.UnaryOperation.NEG
import org.fbme.lib.st.expressions.UnaryOperation.NOT
import org.fbme.lib.st.statements.*


object BasicFBTypeLuaTranslator {
    private const val FB_DI_FLAG = 33554432
    private const val FB_DO_FLAG = 67108864
    private const val FB_AEO_FLAG = 134217728
    private const val FB_ADI_FLAG = 167772160
    private const val FB_ADO_FLAG = 201326592
    private const val FB_IN_FLAG = 268435456
    private const val FB_AEI_FLAG = 805306368

    private val sb = StringBuilder()
    private val memorizedFBData = FBCache()

    private class FBCache {
        var inputDataNames: Set<String> = emptySet() // it is LinkedHashSet, we need the order
        var outputDataNames: Set<String> = emptySet() // it is LinkedHashSet, we need the order
        var internalVarNames: Set<String> = emptySet()
        var socketNames: Set<String> = emptySet()
        var plugNames: Set<String> = emptySet()
        var adapterIdToIsInput: Map<Identifier?, Boolean> = emptyMap()
        var adapterEvents: MutableSet<Identifier> = mutableSetOf()

        fun memorize(fbTypeDeclaration: BasicFBTypeDeclaration) {
            inputDataNames = fbTypeDeclaration.inputParameters.names()
            outputDataNames = fbTypeDeclaration.outputParameters.names()
            internalVarNames = fbTypeDeclaration.internalVariables.names()
            socketNames = fbTypeDeclaration.sockets.names()
            plugNames = fbTypeDeclaration.plugs.names()

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
            inputDataNames = emptySet()
            outputDataNames = emptySet()
            internalVarNames = emptySet()
            socketNames = emptySet()
            plugNames = emptySet()
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
        sb.appendLine("local FB_STATE = 0")

        for (state in fbTypeDeclaration.ecc.states) {
            sb.appendLine("local ECC_${state.name} = ${state.index()}")
        }

        val addEventVars = { events: List<FBPortDescriptor>, varPrefix: String ->
            events.fold(sb) { _, event ->
                val varName = "$varPrefix${event.name}"
                sb.appendLine("local $varName = ${event.position}")
            }
        }

        addEventVars(fbTypeDeclaration.typeDescriptor.eventInputPorts, "EI_")
        addEventVars(fbTypeDeclaration.typeDescriptor.eventOutputPorts, "EO_")

        val addVars = { vars: List<FBPortDescriptor>, prefix: String, flag: Int ->
            vars.forEach {
                sb.appendLine("local $prefix${it.name} = ${flag or it.position}")
            }
        }

        addVars(fbTypeDeclaration.typeDescriptor.dataInputPorts, "DI_", FB_DI_FLAG)
        addVars(fbTypeDeclaration.typeDescriptor.dataOutputPorts, "DO_", FB_DO_FLAG)

        run {
            val plugs = fbTypeDeclaration.typeDescriptor.plugPorts
            val sockets = fbTypeDeclaration.typeDescriptor.socketPorts

            addAdapterConstants(adapterPorts = sockets, offset = plugs.size, true)
            addAdapterConstants(adapterPorts = plugs, offset = 0, false)
        }

        fbTypeDeclaration.internalVariables.forEach {
            sb.appendLine("local IN_${it.name} = ${FB_IN_FLAG or it.index()}")
        }

        sb.appendLine()
    }

    private fun addAdapterConstants(adapterPorts: List<FBPortDescriptor>, offset: Int, isSocket: Boolean) {
        adapterPorts.forEach { portDescriptor ->
            val adapterId = portDescriptor.position + offset

            (portDescriptor.declaration as? AdapterTypeDeclaration)?.let { adapterDeclaration ->
                sb.appendLine()

                val addConstants = { descriptors: List<FBPortDescriptor>, varPrefix: String, flag: Int ->
                    descriptors.forEach { descriptor ->
                        sb.append("local $varPrefix${portDescriptor.name}_${descriptor.name} = ")
                            .appendLine("${(flag or (adapterId shl 16)) or descriptor.position}")
                    }
                }

                val typeDescriptor =
                    if (isSocket) adapterDeclaration.socketTypeDescriptor else adapterDeclaration.plugTypeDescriptor

                with(typeDescriptor) {
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
            sb.appendLine("  local VAR_${it} = fb[$prefix${it}]")
        }
    }

    private fun addAdapterVarPrefix(param: ParameterDeclaration, adapterName: String, prefix: String) {
        sb.appendLine("local VAR_${adapterName}_${param.name} = fb[$prefix${adapterName}_${param.name}]")
    }

    private fun addAdapterVarSuffix(param: ParameterDeclaration, adapterName: String, prefix: String) {
        sb.appendLine("fb[$prefix${adapterName}_${param.name}] = VAR_${adapterName}_${param.name}")
    }

    private fun List<ParameterDeclaration>?.addAdapterVars(
        adapterName: String,
        prefix: String,
        addParamFunc: (param: ParameterDeclaration, adapterName: String, prefix: String) -> Unit
    ) = this?.forEach { param -> addParamFunc(param, adapterName, prefix) }


    private fun addAlgorithms(fbTypeDeclaration: BasicFBTypeDeclaration) {
        fbTypeDeclaration.algorithms.forEach { alg ->
            (alg.body as? AlgorithmBody.ST)?.let { stBody ->

                sb.appendLine("local function alg_${alg.name}(fb)")

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
                val usedInputVarNames = usedVarNames.filter { memorizedFBData.inputDataNames.contains(it) }
                val usedOutputVarNames = usedVarNames.filter { memorizedFBData.outputDataNames.contains(it) }
                val usedInternalVarNames = usedVarNames.filter { memorizedFBData.internalVarNames.contains(it) }

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

                    sb.appendLine()
                }

                stBody.statements.forEach { addStatement(it, "  ") }

                usedOutputVarNames.forEach {
                    sb.appendLine("  fb[DO_${it}] = VAR_${it}")
                }

                usedInternalVarNames.forEach {
                    sb.appendLine("  fb[IN_${it}] = VAR_${it}")
                }

                fbTypeDeclaration.sockets.forEach {
                    it.typeReference.getTarget()?.let { it1 -> addAdapterVarAssignments(it1, false) }
                }
                fbTypeDeclaration.plugs.forEach {
                    it.typeReference.getTarget()?.let { it1 -> addAdapterVarAssignments(it1, false) }
                }
            } ?: throw IllegalStateException("Language not supported for algorithm ${alg.name}")

            sb.appendLine("end")
                .appendLine()
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
                sb.appendLine(" do")
                addStatementSequence(statement.statements, "$indent  ")
                sb.append("${indent}end")
            }

            is CaseStatement -> {
                sb.appendLine("local function case(val)")
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
                    sb.appendLine(" then")

                    addStatementSequence(clause.statements, "$indent    ")
                }

                statement.elseCase?.let {
                    sb.appendLine("$indent  else")
                    it.forEach { statement -> addStatement(statement, "$indent    ") }
                }

                sb.appendLine("$indent  end")
                    .appendLine("${indent}end")
                    .append("${indent}case(")
                statement.expression?.let { addExpression(it) }
                sb.appendLine(")")
            }

            is RepeatStatement -> {
                sb.appendLine("repeat")
                addStatementSequence(statement.body, "$indent  ")
                sb.append("${indent}until ")
                statement.condition?.let { addExpression(it) }
            }

            is IfStatement -> {
                sb.append("if ")
                statement.condition?.let { addExpression(it) }
                sb.appendLine(" then")
                addStatementSequence(statement.thenClause, "$indent  ")

                statement.elseIfClauses.forEach { clause ->
                    sb.append("${indent}elseif ")
                    clause.condition?.let { addExpression(it) }
                    sb.appendLine(" then")
                    addStatementSequence(clause.body, "$indent  ")
                    sb.appendLine()
                }

                statement.elseClause?.let { clause ->
                    sb.appendLine("${indent}else ")
                    addStatementSequence(clause, "$indent  ")
                    sb.appendLine()
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
                sb.appendLine(" do")
                addStatementSequence(statement.body, "$indent  ")
                sb.append("${indent}end")
            }
        }

        sb.appendLine()
    }

    private fun addExpression(expr: Expression) {
        when (expr) {
            is BinaryExpression -> {
                sb.append("(")
                expr.leftExpression?.let { addExpression(it) }
                sb.append(" ${expr.operation.luaAlias()} ")
                expr.rightExpression?.let { addExpression(it) }
                sb.append(")")
            }

            is UnaryExpression -> {
                sb.append(expr.operation.luaAlias())
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
            sb.appendLine("local function enterECC_${state.name}(fb)")
                .appendLine("  fb[FB_STATE] = ECC_${state.name}")

            state.actions.forEach { action ->
                (action.algorithm.getTarget()?.name).also { sb.appendLine("  alg_$it(fb)") }
                    ?: throw NullPointerException("Can not find name of algorithm in ECC with state = '${state.name}'")

                action.event.getTarget()?.portTarget?.let {
                    val prefix = memorizedFBData.adapterPrefixByEventId(it.identifier, "AEO_", "EO_")
                    sb.appendLine("  fb($prefix${it.name})")
                }
            }

            sb.appendLine("  return true")
                .appendLine("end")
                .appendLine()
        }

        sb.appendLine("local function transition(fb, id)")
            .appendLine("  local STATE = fb[FB_STATE]")

        addVarsPrefix(prefix = "DI_", memorizedFBData.inputDataNames)
        addVarsPrefix(prefix = "DO_", memorizedFBData.outputDataNames)
        addVarsPrefix(prefix = "IN_", memorizedFBData.internalVarNames)

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
                sb.appendLine()
                    .append("  elseif ")
            }
            sb.appendLine("ECC_${state.name} == STATE then")
            val outTransitions = fbTypeDeclaration.ecc.transitions
                .filter { t -> t.sourceReference.getTarget()?.name == state.name }

            var noTransitions = true
            outTransitions.forEach { transition ->
                if (noTransitions) {
                    noTransitions = false
                    sb.append("    if ")
                } else {
                    sb.appendLine()
                        .append("    elseif ")
                }
                val conditionEvent = transition.condition.eventReference.getTarget()?.portTarget

                conditionEvent?.let {
                    val prefix = memorizedFBData.adapterPrefixByEventId(conditionEvent.identifier, "AEI_", "EI_")
                    sb.append("$prefix${conditionEvent.name} == id")
                } ?: sb.append("true")

                sb.append(" and ")
                transition.condition.getGuardCondition()?.let { addExpression(it) } ?: sb.append("true")
                sb.append(" then return enterECC_${transition.targetReference.getTarget()?.name}(fb)")
            }

            if (!noTransitions) {
                sb.appendLine()
                    .appendLine("    else return false")
                    .append("    end")
            }
        }

        if (!noElements) {
            sb.appendLine()
                .appendLine("  else return false")
                .append("  end")
        }

        sb.appendLine()
            .appendLine("end")
            .appendLine()
            .appendLine("local function executeEvent(fb, id)")
            .appendLine("  local modified = transition(fb, id)")
            .appendLine("  while modified do")
            .appendLine("    modified = transition(fb, -1)")
            .appendLine("  end")
            .appendLine("end")
            .appendLine()
    }

    private fun addInterfaceSeq(values: Iterable<String>, transformValue: (String) -> String = { it }) =
        sb.append(values.joinToString(", ", "{", "}") { transformValue(it) })

    private fun addInterfaceSpec(fbTypeDeclaration: BasicFBTypeDeclaration) {
        sb.appendLine("local interfaceSpec = {")
            .appendLine("  numEIs = ${fbTypeDeclaration.inputEvents.size},")
            .append("  EINames = ")
        val inputEventNames = fbTypeDeclaration.inputEvents.map { it.name }
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
            memorizedFBData.inputDataNames
        )

        sb.appendLine(",")
            .append("  EIWith = ")
        addInterfaceSeq(eventInputWith.map { it.toString() })

        sb.appendLine(",")
            .append("  EIWithIndexes = ")
        addInterfaceSeq(eventInputWithIndices.map { it.toString() })

        sb.appendLine(",")
            .appendLine("  numEOs = ${fbTypeDeclaration.outputEvents.size},")
            .append("  EONames = ")
        val outputEventNames = fbTypeDeclaration.outputEvents.map { it.name }
        addInterfaceSeq(outputEventNames) { "\"$it\"" }

        val (eventOutputWith, eventOutputWithIndices) = calcEventPortWith(
            fbTypeDeclaration.outputEvents,
            memorizedFBData.outputDataNames
        )

        sb.appendLine(",")
            .append("  EOWith = ")
        addInterfaceSeq(eventOutputWith.map { it.toString() })

        sb.appendLine(",")
            .append("  EOWithIndexes = ")
        addInterfaceSeq(eventOutputWithIndices.map { it.toString() })

        sb.appendLine(",")
            .appendLine("  numDIs = ${fbTypeDeclaration.typeDescriptor.dataInputPorts.size},")
        sb.append("  DINames = ")
        addInterfaceSeq(fbTypeDeclaration.typeDescriptor.dataInputPorts.map { it.name }) { "\"$it\"" }
        sb.appendLine(",")
            .append("  DIDataTypeNames = ")
        addInterfaceSeq(fbTypeDeclaration.inputParameters.map {
            it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
        }) { "\"$it\"" }

        sb.appendLine(",")
            .appendLine("  numDOs = ${fbTypeDeclaration.typeDescriptor.dataOutputPorts.size},")
        sb.append("  DONames = ")
        addInterfaceSeq(fbTypeDeclaration.typeDescriptor.dataOutputPorts.map { it.name }) { "\"$it\"" }
        sb.appendLine(",")
            .append("  DODataTypeNames = ")
        addInterfaceSeq(fbTypeDeclaration.outputParameters.map {
            it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
        }) { "\"$it\"" }

        sb.appendLine(",")
            .appendLine("  numAdapters = ${fbTypeDeclaration.sockets.size + fbTypeDeclaration.plugs.size},")
            .appendLine("  adapterInstanceDefinition = {")

        fbTypeDeclaration.plugs.forEach {
            sb.append("    {adapterNameID = \"${it.name}\", ")
                .appendLine("adapterTypeNameID \"${it.type.typeName}\", isPlug = true}")
        }

        fbTypeDeclaration.sockets.forEach {
            sb.append("    {adapterNameID = \"${it.name}\", ")
                .appendLine("adapterTypeNameID \"${it.type.typeName}\", isPlug = false}")
        }

        sb.appendLine("  }")
            .appendLine("}")
            .appendLine()
    }

    private fun addInternalVarsInformation(fbTypeDeclaration: BasicFBTypeDeclaration) {
        sb.appendLine("local internalVarsInformation = {")
            .appendLine("  numIntVars = ${fbTypeDeclaration.internalVariables.size},")
            .append("  intVarsNames = ")
        addInterfaceSeq(fbTypeDeclaration.internalVariables.map { it.name }) { "\"$it\"" }

        sb.appendLine(",")
            .append("  intVarsDataTypeNames = ")
        addInterfaceSeq(fbTypeDeclaration.internalVariables.map {
            it.type?.stringify() ?: throw NullPointerException("Can not find type of '${it.name}' internal variable")
        }) { "\"$it\"" }

        sb.appendLine()
            .appendLine("}")
            .appendLine()
            .appendLine("return {ECC = executeEvent, interfaceSpec = interfaceSpec, internalVarsInformation = internalVarsInformation}")
    }
}

private fun BinaryOperation.luaAlias(): String {
    return when (this) {
        ADD -> "+"
        AMP -> "&"
        AND -> "and"
        DIV -> "/"
        EQ -> "=="
        GT -> ">"
        GTE -> ">="
        LT -> "<"
        LTE -> "<="
        MOD -> "%"
        MUL -> "*"
        NEQ -> "~="
        OR -> "or"
        POW -> "^"
        SUB -> "-"
        XOR -> "~"
    }
}

private fun UnaryOperation.luaAlias(): String {
    return when (this) {
        NOT -> "not"
        NEG -> "-"
    }
}
