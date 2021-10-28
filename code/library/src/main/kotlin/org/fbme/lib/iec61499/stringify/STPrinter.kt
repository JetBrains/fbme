package org.fbme.lib.iec61499.stringify

import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.*
import java.lang.Boolean
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
        if (expression is BinaryExpression) {
            val binaryExpression = expression
            appendExpression(binaryExpression.leftExpression)
            append(" ")
            append(binaryExpression.operation.alias)
            append(" ")
            appendExpression(binaryExpression.rightExpression)
            return
        }
        if (expression is UnaryExpression) {
            val unaryExpression = expression
            val operation = unaryExpression.operation
            append(operation.alias)
            append(if (operation.isSpaced) " " else "")
            appendExpression(unaryExpression.getInnerExpression())
            return
        }
        if (expression is FunctionCall) {
            val functionCall = expression
            append(functionCall.functionName)
            append("(")
            val actualParameters = functionCall.actualParameters
            val last = actualParameters[actualParameters.size - 1]
            for (actualParameter in actualParameters) {
                appendExpression(actualParameter)
                if (actualParameter !== last) {
                    append(", ")
                }
            }
            append(")")
            return
        }
        if (expression is ParenthesisExpression) {
            append("(")
            appendExpression(expression.innerExpression)
            append(")")
            return
        }
        if (expression is Variable) {
            appendVariable(expression as Variable?)
            return
        }
        if (expression is Literal<*>) {
            appendLiteral(expression)
            return
        }
        throw IllegalArgumentException("Unrecognized expression $expression")
    }

    private fun appendVariable(variable: Variable?) {
        if (variable is ArrayVariable) {
            val arrayVariable = variable
            appendVariable(arrayVariable.subscribedVariable)
            append("[")
            val subscripts = arrayVariable.subscripts
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
            LiteralKind.BINARY_BOOL -> append(if (value === Boolean.TRUE) "BOOL#1" else "BOOL#0")
            LiteralKind.BINARY_INT -> append("2#" + Integer.toString(value as Int, 2))
            LiteralKind.BOOL -> append(if (value === Boolean.TRUE) "TRUE" else "FALSE")
            LiteralKind.DEC_INT -> append(Integer.toString(value as Int))
            LiteralKind.HEX_INT -> append("16#" + Integer.toString(value as Int, 16))
            LiteralKind.OCT_INT -> append("8#" + Integer.toString(value as Int, 8))
            LiteralKind.STRING -> append("'$value'")
            LiteralKind.WSTRING -> append("\"" + value + "\"")
            LiteralKind.TIME -> append("T#$value")
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
        try {
            if (statement is AssignmentStatement) {
                val assignmentStatement = statement
                appendVariable(assignmentStatement.variable)
                append(" := ")
                appendExpression(assignmentStatement.expression)
                return
            }
            if (statement is CaseStatement) {
                val caseStatement = statement
                append("CASE ")
                appendExpression(caseStatement.expression)
                append(" OF ")
                appendNewLine()
                withIndent {
                    for (element in caseStatement.cases) {
                        appendIndent()
                        appendLiteral(element?.literal as Literal<*>)
                        append(" ->")
                        appendNewLine()
                        withIndent { appendStatementList(element.statements) }
                    }
                    val elseCase = caseStatement.elseCase
                    if (elseCase != null) {
                        append("ELSE ->")
                        appendNewLine()
                        withIndent { appendStatementList(elseCase) }
                    }
                }
                appendIndent()
                append("END_CASE")
                return
            }
            if (statement is EmptyStatement) {
                return
            }
            if (statement is ExitStatement) {
                append("EXIT")
                return
            }
            if (statement is ForStatement) {
                val forStatement = statement
                val controlVariable = forStatement.controlVariable
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
                withIndent { appendStatementList(forStatement.statements) }
                appendIndent()
                append("END_FOR")
            }
            if (statement is IfStatement) {
                val ifStatement = statement
                append("IF ")
                appendExpression(ifStatement.condition)
                append(" THEN")
                appendNewLine()
                appendIndentStatementList(ifStatement.thenClause)
                for (elseIfClause in ifStatement.elseIfClauses) {
                    appendIndent()
                    append("ELSIF ")
                    appendExpression(elseIfClause.condition)
                    append(" THEN")
                    appendNewLine()
                    appendIndentStatementList(elseIfClause.body)
                }
                val elseClause = ifStatement.elseClause
                if (elseClause != null) {
                    appendIndent()
                    append("ELSE")
                    appendNewLine()
                    appendIndentStatementList(elseClause)
                }
                appendIndent()
                append("END_IF")
            }
            if (statement is RepeatStatement) {
                val repeatStatement = statement
                append("REPEAT")
                appendNewLine()
                withIndent { appendStatementList(repeatStatement.body) }
                appendIndent()
                append("UNITL ")
                appendExpression(repeatStatement.condition)
                append(" END_REPEAT")
            }
            if (statement is ReturnStatement) {
                append("RETURN")
            }
            if (statement is WhileStatement) {
                val whileStatement = statement
                append("WHILE ")
                appendExpression(whileStatement.condition)
                append(" DO")
                appendNewLine()
                withIndent { appendStatementList(whileStatement.body) }
                appendIndent()
                append(" END_WHILE")
            }
        } finally {
            append(";")
            appendNewLine()
        }
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