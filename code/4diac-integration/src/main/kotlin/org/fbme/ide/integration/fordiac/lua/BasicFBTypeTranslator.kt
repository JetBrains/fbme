package org.fbme.ide.integration.fordiac.lua

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.*

object BasicFBTypeTranslator {
    private const val FB_AEO_FLAG = 134217728
    private const val FB_ADI_FLAG = 167772160
    private const val FB_ADO_FLAG = 201326592
    private const val FB_IN_FLAG = 268435456
    private const val FB_AEI_FLAG = 805306368

    private val sb = StringBuilder()
    private val memorizedFBData = FBCache()

    private class FBCache {
        var inputDataNames: Set<String> = emptySet()
        var outputDataNames: Set<String> = emptySet()
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
            val idToIsInputSocket = { port: FBPortDescriptor -> port.declaration?.identifier to !port.isInput }
            val socketIdToIsInput = fbTypeDeclaration.typeDescriptor.socketPorts.associate(idToIsInputSocket)
            val idToIsInputPlug = { port: FBPortDescriptor -> port.declaration?.identifier to port.isInput }
            val plugIdToIsInput = fbTypeDeclaration.typeDescriptor.socketPorts.associate(idToIsInputPlug)
            return socketIdToIsInput + plugIdToIsInput
        }

        private fun calculateAdapterEvents(fbTypeDeclaration: BasicFBTypeDeclaration): MutableSet<Identifier> {
            val adapterEvents = mutableSetOf<Identifier>()
            fbTypeDeclaration.sockets.forEach { socket ->
                adapterEvents.addAll(socket.typeReference.getTarget()?.inputEvents?.map { it.identifier } ?: listOf())
                adapterEvents.addAll(socket.typeReference.getTarget()?.outputEvents?.map { it.identifier } ?: listOf())
            }
            fbTypeDeclaration.plugs.forEach { plug ->
                adapterEvents.addAll(plug.typeReference.getTarget()?.inputEvents?.map { it.identifier } ?: listOf())
                adapterEvents.addAll(plug.typeReference.getTarget()?.outputEvents?.map { it.identifier } ?: listOf())
            }

            return adapterEvents
        }

        // it is LinkedHashSet, we need the order
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
        sb.addInterfaceSpec(
            type = fbTypeDeclaration,
            dataNames = DataNames(input = memorizedFBData.inputDataNames, output = memorizedFBData.outputDataNames)
        )
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

        sb.addEventConstants(fbTypeDeclaration.typeDescriptor)
        sb.addVariableConstants(fbTypeDeclaration.typeDescriptor)

        addAdapterConstants(fbTypeDeclaration)

        fbTypeDeclaration.internalVariables.forEach {
            sb.appendLine("local IN_${it.name} = ${FB_IN_FLAG or it.index()}")
        }

        sb.appendLine()
    }

    private fun addAdapterConstants(fb: BasicFBTypeDeclaration) {
        fb.typeDescriptor.socketPorts.forEach { portDescriptor ->
            val adapterId = portDescriptor.position + fb.typeDescriptor.plugPorts.size

            val addConstants = { descriptors: List<FBPortDescriptor>, varPrefix: String, flag: Int ->
                descriptors.forEach { descriptor ->
                    sb.append("local $varPrefix${portDescriptor.name}_${descriptor.name} = ")
                        .appendLine("${(flag or (adapterId shl 16)) or descriptor.position}")
                }
            }

            (portDescriptor.declaration as? SocketDeclaration)?.let { adapterDeclaration ->
                sb.appendLine()

                val typeDescriptor = adapterDeclaration.typeReference.getTarget()?.socketTypeDescriptor

                typeDescriptor?.let {
                    addConstants(it.eventInputPorts, "AEO_", FB_AEO_FLAG)
                    addConstants(it.eventOutputPorts, "AEI_", FB_AEI_FLAG)
                    addConstants(it.dataInputPorts, "ADO_", FB_ADI_FLAG)
                    addConstants(it.dataOutputPorts, "ADI_", FB_ADO_FLAG)
                }
            }
        }

        fb.typeDescriptor.plugPorts.forEach { portDescriptor ->
            val adapterId = portDescriptor.position

            val addConstants = { descriptors: List<FBPortDescriptor>, varPrefix: String, flag: Int ->
                descriptors.forEach { descriptor ->
                    sb.append("local $varPrefix${portDescriptor.name}_${descriptor.name} = ")
                        .appendLine("${(flag or (adapterId shl 16)) or descriptor.position}")
                }
            }

            (portDescriptor.declaration as? PlugDeclaration)?.let { adapterDeclaration ->
                sb.appendLine()

                val typeDescriptor = adapterDeclaration.typeReference.getTarget()?.plugTypeDescriptor

                typeDescriptor?.let {
                    addConstants(it.eventInputPorts, "AEO_", FB_AEO_FLAG)
                    addConstants(it.eventOutputPorts, "AEI_", FB_AEI_FLAG)
                    addConstants(it.dataInputPorts, "ADO_", FB_ADI_FLAG)
                    addConstants(it.dataOutputPorts, "ADI_", FB_ADO_FLAG)
                }
            }
        }

        sb.appendLine()
    }

    private fun addVarsPrefix(prefix: String, varNames: Iterable<String>) {
        varNames.forEach {
            sb.appendLine("  local VAR_${it} = fb[$prefix${it}]")
        }
    }

    private fun addAdapterVarPrefix(param: ParameterDeclaration, adapterName: String, prefix: String) {
        sb.appendLine("  local VAR_${adapterName}_${param.name} = fb[$prefix${adapterName}_${param.name}]")
    }

    private fun addAdapterVarSuffix(param: ParameterDeclaration, adapterName: String, prefix: String) {
        sb.appendLine("  fb[$prefix${adapterName}_${param.name}] = VAR_${adapterName}_${param.name}")
    }

    private fun List<ParameterDeclaration>?.addAdapterVars(
        adapterName: String,
        prefix: String,
        addParamFunc: (param: ParameterDeclaration, adapterName: String, prefix: String) -> Unit
    ) = this?.forEach { param -> addParamFunc(param, adapterName, prefix) }

    private fun addPlugVarAssignments(plug: PlugDeclaration, isPrefix: Boolean) {
        var inputPrefix = "ADI_"
        var outputPrefix = "ADO_"
        if (memorizedFBData.adapterIdToIsInput[plug.identifier] == true) {
            inputPrefix = "ADO_"
            outputPrefix = "ADI_"
        }
        val addAdapterParamFunc = if (isPrefix) ::addAdapterVarPrefix else ::addAdapterVarSuffix
        val adapter = plug.typeReference.getTarget()
        adapter?.inputParameters.addAdapterVars(plug.name, inputPrefix, addAdapterParamFunc)
        adapter?.outputParameters.addAdapterVars(plug.name, outputPrefix, addAdapterParamFunc)
    }

    private fun addSocketVarAssignments(socket: SocketDeclaration, isPrefix: Boolean) {
        var inputPrefix = "ADI_"
        var outputPrefix = "ADO_"
        if (memorizedFBData.adapterIdToIsInput[socket.identifier] == true) {
            inputPrefix = "ADO_"
            outputPrefix = "ADI_"
        }
        val addAdapterParamFunc = if (isPrefix) ::addAdapterVarPrefix else ::addAdapterVarSuffix
        val adapter = socket.typeReference.getTarget()
        adapter?.inputParameters.addAdapterVars(socket.name, inputPrefix, addAdapterParamFunc)
        adapter?.outputParameters.addAdapterVars(socket.name, outputPrefix, addAdapterParamFunc)
    }

    private fun addAdapterVarAssignments(fb: BasicFBTypeDeclaration, isPrefix: Boolean) {
        fb.sockets.forEach {
            addSocketVarAssignments(it, isPrefix)
        }
        fb.plugs.forEach {
            addPlugVarAssignments(it, isPrefix)
        }
    }

    private fun AlgorithmBody.ST.calculateUsedVariableNames(): List<String> {
        val varNames = ArrayList<String>()
        this.statements.forEach { varNames.addVars(it) }

        return varNames
    }

    private fun addAlgorithms(fbTypeDeclaration: BasicFBTypeDeclaration) {
        fbTypeDeclaration.algorithms.forEach { alg ->
            (alg.body as? AlgorithmBody.ST)?.let { stBody ->

                sb.appendLine("local function alg_${alg.name}(fb)")

                val usedVarNames = stBody.calculateUsedVariableNames()

                // intersect fb vars with alg vars and work with this set
                val usedInputVarNames = usedVarNames.filter { memorizedFBData.inputDataNames.contains(it) }
                val usedOutputVarNames = usedVarNames.filter { memorizedFBData.outputDataNames.contains(it) }
                val usedInternalVarNames = usedVarNames.filter { memorizedFBData.internalVarNames.contains(it) }

                addVarsPrefix(prefix = "DI_", usedInputVarNames)
                addVarsPrefix(prefix = "DO_", usedOutputVarNames)
                addVarsPrefix(prefix = "IN_", usedInternalVarNames)

                addAdapterVarAssignments(fbTypeDeclaration, isPrefix = true)

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

                addAdapterVarAssignments(fbTypeDeclaration, isPrefix = false)
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
                    LiteralKind.BINARY_BOOL, LiteralKind.BOOL -> {
                        sb.append(if (expr.value as Boolean) "true" else "false")
                    }

                    LiteralKind.STRING, LiteralKind.WSTRING -> {
                        sb.append("\"${expr.value as String}\"")
                    }

                    LiteralKind.BINARY_INT, LiteralKind.DEC_INT, LiteralKind.HEX_INT, LiteralKind.OCT_INT, LiteralKind.TIME, LiteralKind.REAL -> {
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

        addAdapterVarAssignments(fbTypeDeclaration, isPrefix = true)

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

    private fun addInternalVarsInformation(fbTypeDeclaration: BasicFBTypeDeclaration) {
        sb.appendLine("local internalVarsInformation = {")
            .appendLine("  numIntVars = ${fbTypeDeclaration.internalVariables.size},")
            .append("  intVarsNames = ")
            .append(tokensToJsonString(memorizedFBData.internalVarNames) { it.escape() })
            .appendLine(",")
            .append("  intVarsDataTypeNames = ")
            .append(tokensToJsonString(fbTypeDeclaration.internalVariables.map {
                it.type?.stringify()
                    ?: throw NullPointerException("Can not find type of '${it.name}' internal variable")
            }) { it.escape() })
            .appendLine()
            .appendLine("}")
            .appendLine()
            .appendLine("return {ECC = executeEvent, interfaceSpec = interfaceSpec, internalVarsInformation = internalVarsInformation}")
    }
}

private fun BinaryOperation.luaAlias(): String {
    return when (this) {
        BinaryOperation.ADD -> "+"
        BinaryOperation.AMP -> "&"
        BinaryOperation.AND -> "and"
        BinaryOperation.DIV -> "/"
        BinaryOperation.EQ -> "=="
        BinaryOperation.GT -> ">"
        BinaryOperation.GTE -> ">="
        BinaryOperation.LT -> "<"
        BinaryOperation.LTE -> "<="
        BinaryOperation.MOD -> "%"
        BinaryOperation.MUL -> "*"
        BinaryOperation.NEQ -> "~="
        BinaryOperation.OR -> "or"
        BinaryOperation.POW -> "^"
        BinaryOperation.SUB -> "-"
        BinaryOperation.XOR -> "~"
    }
}

private fun UnaryOperation.luaAlias(): String {
    return when (this) {
        UnaryOperation.NOT -> "not"
        UnaryOperation.NEG -> "-"
    }
}

private typealias VariableNames = MutableList<String>

private fun VariableNames.addVars(variable: Variable) {
    when (variable) {
        is VariableReference -> {
            variable.reference.getTarget()?.name?.let { add(it) }
        }

        is ArrayVariable -> {
            (variable.subscribedVariable as? VariableReference)?.reference?.getTarget()?.name?.let { add(it) }
            variable.subscripts.filterNotNull().forEach { addVars(it) }
        }
    }
}

private fun VariableNames.addVars(expr: Expression) {
    when (expr) {
        is BinaryExpression -> {
            expr.leftExpression?.let { addVars(it) }
            expr.rightExpression?.let { addVars(it) }
        }

        is UnaryExpression -> expr.getInnerExpression()?.let { addVars(it) }
        is ParenthesisExpression -> addVars(expr.innerExpression)
        is Literal<*> -> {} // do nothing
        is Variable -> addVars(expr)
        is FunctionCall -> expr.actualParameters.filterNotNull().forEach { addVars(it) }
    }
}

private fun VariableNames.addVars(statement: Statement) {
    when (statement) {
        is AssignmentStatement -> addVars(statement)
        is ExitStatement -> addVars(statement)
        is ForStatement -> addVars(statement)
        is CaseStatement -> addVars(statement)
        is RepeatStatement -> addVars(statement)
        is IfStatement -> addVars(statement)
        is EmptyStatement -> addVars(statement)
        is ReturnStatement -> addVars(statement)
        is WhileStatement -> addVars(statement)
    }
}

private fun VariableNames.addVars(statement: AssignmentStatement) {
    statement.variable?.let { addVars(it) }
    statement.expression?.let { addVars(it) }
}

private fun VariableNames.addVars(statement: ExitStatement) {
    // no variables to add
}

private fun VariableNames.addVars(statement: ForStatement) {
    with(statement.controlVariable) {
        beginExpression?.let { addVars(it) }
        endExpression?.let { addVars(it) }
        stepExpression?.let { addVars(it) }
    }

    statement.statements.forEach { addVars(it) }
}

private fun VariableNames.addVars(statement: CaseStatement) {
    statement.expression?.let { addVars(it) }

    statement.cases.forEach { caseElem ->
        caseElem.statements.forEach { addVars(it) }
    }

    statement.elseCase?.let { statements ->
        statements.forEach { addVars(it) }
    }
}

private fun VariableNames.addVars(statement: RepeatStatement) {
    statement.condition?.let { addVars(it) }
    statement.body.forEach { addVars(it) }
}

private fun VariableNames.addVars(statement: IfStatement) {
    with(statement) {
        condition?.let { addVars(it) }

        thenClause.forEach { addVars(it) }

        elseIfClauses.forEach { clause ->
            clause.condition?.let { addVars(it) }
            clause.body.forEach { addVars(it) }
        }

        elseClause?.let { statements ->
            statements.forEach { addVars(it) }
        }
    }
}

private fun VariableNames.addVars(statement: EmptyStatement) {
    // no variables to add
}

private fun VariableNames.addVars(statement: ReturnStatement) {
    // no variables to add
}

private fun VariableNames.addVars(statement: WhileStatement) {
    statement.condition?.let { addVars(it) }
    statement.body.forEach { addVars(it) }
}
