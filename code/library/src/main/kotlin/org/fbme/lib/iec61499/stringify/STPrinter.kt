package org.fbme.lib.iec61499.stringify

import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.*
import kotlin.IllegalArgumentException
import kotlin.Int
import kotlin.String

class STPrinter {
    private var myIndent = ""
    private val myBuilder = StringBuilder()
    private fun append(value: String?) {
        myBuilder.append(value)
    }

    private fun appendIndent() {
        myBuilder.append(myIndent)
    }

    private fun appendNewLine() {
        myBuilder.append("\n")
    }

    private fun withIndent(runnable: Runnable) {
        val oldIndent = myIndent
        myIndent += "  "
        try {
            runnable.run()
        } finally {
            myIndent = oldIndent
        }
    }

    private fun appendExpression(expression: Expression?) {
        expression ?: return

        when (expression) {
            is BinaryExpression -> {
                appendExpression(expression.leftExpression)
                append(" ")
                append(expression.operation.alias)
                append(" ")
                appendExpression(expression.rightExpression)
            }

            is UnaryExpression -> {
                val operation = expression.operation
                append(operation.alias)
                append(if (operation.isSpaced) " " else "")
                appendExpression(expression.getInnerExpression())
            }

            is FunctionCall -> {
                append(expression.functionName)
                append("(")
                val actualParameters = expression.actualParameters
                val last = actualParameters[actualParameters.size - 1]
                for (actualParameter in actualParameters) {
                    appendExpression(actualParameter)
                    if (actualParameter !== last) {
                        append(", ")
                    }
                }
                append(")")
            }

            is ParenthesisExpression -> {
                append("(")
                appendExpression(expression.innerExpression)
                append(")")
            }

            is Variable -> {
                appendVariable(expression as Variable?)
            }

            is Literal<*> -> {
                appendLiteral(expression)
            }
        }
    }

    private fun appendVariable(variable: Variable?) {
        if (variable is ArrayVariable) {
            appendVariable(variable.subscribedVariable)
            append("[")
            val subscripts = variable.subscripts
            val last = subscripts[subscripts.size - 1]
            for (subscript in subscripts) {
                appendExpression(subscript)
                if (subscript !== last) {
                    append(", ")
                }
            }
            append("]")
            return
        }
        if (variable is VariableReference) {
            append(variable.reference.presentation)
            return
        }
        throw IllegalArgumentException("Unrecognized variable $variable")
    }

    private fun appendLiteral(literal: Literal<*>) {
        val value = literal.value
        when (literal.kind) {
            LiteralKind.BINARY_BOOL -> append(if (value == true) "BOOL#1" else "BOOL#0")
            LiteralKind.BINARY_INT -> append("2#" + (value as Int).toString(2))
            LiteralKind.BOOL -> append(if (value == true) "TRUE" else "FALSE")
            LiteralKind.DEC_INT -> append((value as Int).toString())
            LiteralKind.HEX_INT -> append("16#" + (value as Int).toString(16))
            LiteralKind.OCT_INT -> append("8#" + (value as Int).toString(8))
            LiteralKind.STRING -> append("'$value'")
            LiteralKind.WSTRING -> append("\"" + value + "\"")
            LiteralKind.TIME -> append("T#$value")
            LiteralKind.REAL -> append(value.toString())
            else -> throw IllegalArgumentException("Unrecognized literal $literal")
        }
    }

    private fun appendIndentStatementList(statements: List<Statement>) {
        withIndent { appendStatementList(statements) }
    }

    private fun appendStatementList(statements: List<Statement>) {
        for (statement in statements) {
            appendStatement(statement)
        }
    }

    private fun appendStatement(statement: Statement) {
        appendIndent()
        when (statement) {
            is AssignmentStatement -> {
                appendVariable(statement.variable)
                append(" := ")
                appendExpression(statement.expression)
            }

            is CaseStatement -> {
                append("CASE ")
                appendExpression(statement.expression)
                append(" OF ")
                appendNewLine()
                withIndent {
                    for (element in statement.cases) {
                        appendIndent()
                        appendLiteral(element.literal as Literal<*>)
                        append(" ->")
                        appendNewLine()
                        withIndent { appendStatementList(element.statements) }
                    }
                    val elseCase = statement.elseCase
                    if (elseCase != null) {
                        append("ELSE ->")
                        appendNewLine()
                        withIndent { appendStatementList(elseCase) }
                    }
                }
                appendIndent()
                append("END_CASE")
            }

            is EmptyStatement -> {
                return
            }

            is ExitStatement -> {
                append("EXIT")
            }

            is ForStatement -> {
                val controlVariable = statement.controlVariable
                append("FOR ")
                append(controlVariable.name)
                append(" := ")
                appendExpression(controlVariable.beginExpression)
                append(" TO ")
                appendExpression(controlVariable.endExpression)
                val stepExpression = controlVariable.stepExpression
                if (stepExpression != null) {
                    append(" BY ")
                    appendExpression(stepExpression)
                }
                append(" DO")
                appendNewLine()
                withIndent { appendStatementList(statement.statements) }
                appendIndent()
                append("END_FOR")
            }

            is IfStatement -> {
                append("IF ")
                appendExpression(statement.condition)
                append(" THEN")
                appendNewLine()
                appendIndentStatementList(statement.thenClause)
                for (elseIfClause in statement.elseIfClauses) {
                    appendIndent()
                    append("ELSIF ")
                    appendExpression(elseIfClause.condition)
                    append(" THEN")
                    appendNewLine()
                    appendIndentStatementList(elseIfClause.body)
                }
                val elseClause = statement.elseClause
                if (elseClause != null) {
                    appendIndent()
                    append("ELSE")
                    appendNewLine()
                    appendIndentStatementList(elseClause)
                }
                appendIndent()
                append("END_IF")
            }

            is RepeatStatement -> {
                append("REPEAT")
                appendNewLine()
                withIndent { appendStatementList(statement.body) }
                appendIndent()
                append("UNITL ")
                appendExpression(statement.condition)
                append(" END_REPEAT")
            }

            is ReturnStatement -> {
                append("RETURN")
            }

            is WhileStatement -> {
                append("WHILE ")
                appendExpression(statement.condition)
                append(" DO")
                appendNewLine()
                withIndent { appendStatementList(statement.body) }
                appendIndent()
                append(" END_WHILE")
            }
        }
        append(";")
        appendNewLine()
    }

    override fun toString(): String {
        return myBuilder.toString()
    }

    companion object {
        @JvmStatic
        fun printStatementList(statements: List<Statement>): String {
            val printer = STPrinter()
            printer.appendStatementList(statements)
            return printer.toString()
        }

        @JvmStatic
        fun printExpression(expression: Expression): String {
            val printer = STPrinter()
            printer.appendExpression(expression)
            return printer.toString()
        }

        @JvmStatic
        fun printLiteral(literal: Literal<*>): String {
            val printer = STPrinter()
            printer.appendLiteral(literal)
            return printer.toString()
        }
    }
}
