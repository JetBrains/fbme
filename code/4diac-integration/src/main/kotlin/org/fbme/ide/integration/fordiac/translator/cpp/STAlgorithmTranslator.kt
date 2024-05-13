package org.fbme.ide.integration.fordiac.translator.cpp

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator.Companion.EXPORT_PREFIX
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.expressions.BinaryOperation.*
import org.fbme.lib.st.expressions.LiteralKind.*
import org.fbme.lib.st.statements.*
import org.fbme.lib.st.types.ArrayType

// todo: make it classic class
object STAlgorithmTranslator {
    private val tempVarsCache = mutableSetOf<Identifier>()

    fun translate(algorithm: AlgorithmDeclaration): String {
        val sb = StringBuilder()
        val body = algorithm.body as AlgorithmBody.ST

        algorithm.temporaryVariables.forEach { tempVarsCache.add(it.identifier) }

        val localVars = algorithm.constructLocalVars()
        sb.append(localVars)

        sb.appendLine(translateStatementSequence(body.statements, "  "))

        tempVarsCache.clear()

        return sb.toString()
    }

    fun extractTemporaryVarTypeNames(algorithm: AlgorithmDeclaration): List<String> =
        algorithm.temporaryVariables.map { it.type!!.stringify() }

    private fun translateStatementSequence(statements: List<Statement>, indent: String): String {
        val sb = StringBuilder()

        statements.forEach {
            sb.append(translateStatement(it, indent))
        }

        return sb.toString()
    }

    fun translateStatement(statement: Statement, indent: String) =
        when (statement) {
            is AssignmentStatement -> translateStatement(statement, indent)
            is ExitStatement -> translateStatement(statement, indent)
            is ForStatement -> translateStatement(statement, indent)
            is CaseStatement -> translateStatement(statement, indent)
            is RepeatStatement -> translateStatement(statement, indent)
            is IfStatement -> translateStatement(statement, indent)
            is EmptyStatement -> translateStatement(statement, indent)
            is ReturnStatement -> translateStatement(statement, indent)
            is WhileStatement -> translateStatement(statement, indent)
        }

    private fun translateStatement(statement: AssignmentStatement, indent: String): String {
        val sb = StringBuilder()

        statement.variable?.let { v ->
            sb.append(indent)
                .append(translateExpression(v))
                .append(" = ")
                .append(translateExpression(statement.expression!!))
                .appendLine(";")
        }

        return sb.toString()
    }

    private fun translateStatement(statement: ExitStatement, indent: String) = "${indent}break;"

    // fixme: calculate loopVarIndex (hard logic!)
    private fun translateStatement(statement: ForStatement, indent: String): String {
        val sb = StringBuilder()
        val controlVarName = "st_${statement.controlVariable.name}"

        sb.append("${indent}const auto by_")
            .append(statement.controlVariable.name)
            .append(" = ")
        statement.controlVariable.stepExpression?.let { sb.append(translateExpression(it)) } ?: sb.append(1)
        sb.appendLine(";")
            .append("${indent}const auto to_")
            .append(statement.controlVariable.name)
            .append(" = ")
            .append(translateExpression(statement.controlVariable.endExpression!!))
            .appendLine(";")
            .append("${indent}for(")
            .append(controlVarName)
            .append(" = ")
            .append(translateExpression(statement.controlVariable.beginExpression!!))
            .appendLine(";")
            .append(indent)
            .append("    (by_")
            .append(statement.controlVariable.name)
            .append(" > 0 && ")
            .append(controlVarName)
            .append(" <= to_")
            .append(statement.controlVariable.name)
            .appendLine(") ||")
            .append(indent)
            .append("    (by_")
            .append(statement.controlVariable.name)
            .append(" <= 0 && ")
            .append(controlVarName)
            .append(" >= to_")
            .append(statement.controlVariable.name)
            .appendLine(");")
            .append(indent)
            .append("    ")
            .append(controlVarName)
            .append(" = ")
            .append(controlVarName)
            .append(" + by_")
            .append(statement.controlVariable.name)
            .appendLine(") {")

        translateStatementSequence(statement.statements, "$indent\t")
        sb.appendLine("}")

        return sb.toString()
    }

    private fun translateStatement(statement: CaseStatement, indent: String): String {
        val sb = StringBuilder()

        sb.append(indent)
            .append("switch (")
            .append(translateExpression(statement.expression!!))
            .appendLine(") {")

        statement.cases.forEach { clause ->
            sb.append(indent)
                .append("\t")
                .append("case ")
                .append(translateExpression(clause.literal!!))
                .appendLine(":")

            translateStatementSequence(clause.statements, "$indent\t")
            sb.appendLine("$indent\tbreak;")
        }

        statement.elseCase?.let { statements ->
            sb.append(indent)
                .appendLine("default:")
            translateStatementSequence(statements, "$indent\t")
            sb.append(indent)
                .append("\t")
                .appendLine("break;")
        }

        sb.append(indent)
            .appendLine("}")

        return sb.toString()
    }

    private fun translateStatement(statement: RepeatStatement, indent: String): String {
        val sb = StringBuilder()

        sb.append(indent)
            .appendLine("do {")
            .append(translateStatementSequence(statement.body, "$indent  "))
            .append(indent)
            .append("} while(!((")
            .append(translateExpression(statement.condition!!))
            .appendLine(")));")

        return sb.toString()
    }

    private fun translateStatement(statement: IfStatement, indent: String): String {
        val sb = StringBuilder()

        sb.append(indent)
            .append("if(")
            .append(translateExpression(statement.condition!!))
            .appendLine(") {")
            .append(translateStatementSequence(statement.thenClause, "$indent\t"))
            .append(indent)
            .appendLine("}")

        statement.elseIfClauses.forEach { clause ->
            sb.append(indent)
                .append("else if(")
                .append(translateExpression(clause.condition!!))
                .appendLine(") {")
                .append(translateStatementSequence(clause.body, "$indent\t"))
                .append(indent)
                .appendLine("}")
        }

        statement.elseClause?.let { clause ->
            sb.append(indent)
                .appendLine("else {")
                .append(translateStatementSequence(clause, "$indent\t"))
                .append(indent)
                .appendLine("}")
        }

        return sb.toString()
    }

    private fun translateStatement(statement: EmptyStatement, indent: String) = ""

    private fun translateStatement(statement: ReturnStatement, indent: String) = "${indent}return;"

    private fun translateStatement(statement: WhileStatement, indent: String): String {
        val sb = StringBuilder()

        sb.append(indent)
            .append("while(")
            .append(translateExpression(statement.condition!!), "")
            .appendLine(") {")
            .append(translateStatementSequence(statement.body, "$indent  "))
            .append(indent)
            .appendLine("}")

        return sb.toString()
    }

    fun translateExpression(expression: Expression): String =
        when (expression) {
            is BinaryExpression -> translateExpression(expression)
            is UnaryExpression -> translateExpression(expression)
            is ParenthesisExpression -> translateExpression(expression)
            is Literal<*> -> translateExpression(expression)
            is VariableReference -> translateExpression(expression)
            is ArrayVariable -> translateExpression(expression)
            is FunctionCall -> translateExpression(expression)
        }

    fun translateExpression(expression: BinaryExpression): String {
        val sb = StringBuilder()

        if (expression.operation.isFunction()) {
            sb.append(expression.operation.cppAlias())
            sb.append("(")
            expression.leftExpression?.let { sb.append(translateExpression(it)) }
            sb.append(", ")
            expression.rightExpression?.let { sb.append(translateExpression(it)) }
            sb.append(")")
        } else {
            sb.append("(")
            expression.leftExpression?.let { sb.append(translateExpression(it)) }
            sb.append(" ${expression.operation.cppAlias()} ")
            expression.rightExpression?.let { sb.append(translateExpression(it)) }
            sb.append(")")
        }

        return sb.toString()
    }

    fun translateExpression(expression: UnaryExpression): String {
        val sb = StringBuilder()

        sb.append(expression.operation.cppAlias())
        if (expression.operation.isSpaced) {
            sb.append(" ")
        }
        expression.getInnerExpression()?.let {
            sb.append("(")
                .append(translateExpression(it))
                .append(")")
        }

        return sb.toString()
    }

    fun translateExpression(expression: ParenthesisExpression): String = translateExpression(expression.innerExpression)

    // todo: DatetimeLiteral class
    // create parsing of time literal and appropriate translation
    fun translateExpression(expression: Literal<*>): String {
        val sb = StringBuilder()

        when (expression.kind) {
            BINARY_BOOL, BOOL -> {
                sb.append(if (expression.value as Boolean) "true" else "false")
            }

            STRING, WSTRING -> {
                sb.append("\"${expression.value as String}\"")
            }

            BINARY_INT, DEC_INT, HEX_INT, OCT_INT, TIME, REAL -> {
                sb.append(expression.value)
            }

            /*
            `expr.value` is empty string
             https://github.com/JetBrains/fbme/issues/13
             */
            null -> throw IllegalStateException("Unknown literal type with value: ${expression.value}")
        }

        return sb.toString()
    }

    // fixme:
    fun translateExpression(expression: VariableReference): String =
        constructVarAccess(expression.reference.getTarget()!!)


    fun translateExpression(expression: ArrayVariable): String {
        val sb = StringBuilder()

        expression.subscribedVariable?.let {
            sb.append(translateExpression(it))
            expression.subscripts.filterNotNull().forEach { subscript ->
                sb.append("[")
                sb.append(translateExpression(subscript))
                sb.append("]")
            }
        }
            ?: throw NullPointerException("Can not find variable name for array: '${expression.subscripts.joinToString()}'")

        return sb.toString()
    }

    fun translateExpression(expression: FunctionCall): String {
        val sb = StringBuilder()
        sb.append("${expression.functionName}(")

        expression.actualParameters.filterNotNull().let {
            it.forEachIndexed { ind, e ->
                sb.append(translateExpression(e))
                if (ind != it.lastIndex) {
                    sb.append(", ")
                }
            }
        }

        sb.append(")")

        return sb.toString()
    }

    private fun AlgorithmDeclaration.constructLocalVars(): String {
        val sb = StringBuilder()

        this.temporaryVariables.forEach { v ->
            // todo: some located vars... What does it mean? generateLocalVariables method

            sb.append("  CIEC_${v.type!!.stringify()} ${constructVarAccessLocal(v.name)}")

            if (v is ArrayType) {
                sb.append("[]") // todo: how to access to ArrayVariable?
            } else {
                v.initialValue?.let { sb.append(" = ${it.value}") }
                sb.appendLine(";")
            }
        }

        return sb.toString()
    }

    private fun constructVarAccessLocal(varName: String) = "$EXPORT_PREFIX$varName"

    private fun constructVarAccess(v: VariableDeclaration): String {
        val res = constructVarAccessLocal(v.name)

        if (v.identifier !in tempVarsCache) {
            return "$res()"
        }

        return res
    }
}

private fun BinaryOperation.cppAlias(): String =
    when (this) {
        ADD -> "ADD"
        AMP -> "&&"
        AND -> "&&"
        DIV -> "DIV"
        EQ -> "=="
        GT -> ">"
        GTE -> ">="
        LT -> "<"
        LTE -> "<="
        MOD -> "%"
        MUL -> "MUL"
        NEQ -> "!="
        OR -> "||"
        POW -> "EXPT"
        SUB -> "SUB"
        XOR -> "^"
    }


private fun UnaryOperation.cppAlias(): String {
    return when (this) {
        UnaryOperation.NOT -> "!"
        UnaryOperation.NEG -> "-"
    }
}

// is it intended to be invoked `FUNC(arg1, arg2)`
private fun BinaryOperation.isFunction(): Boolean =
    when (this) {
        ADD,
        DIV,
        MUL,
        POW,
        SUB -> true

        else -> false
    }