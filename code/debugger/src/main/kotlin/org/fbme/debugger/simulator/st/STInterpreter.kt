package org.fbme.debugger.simulator.st

import org.fbme.debugger.simulator.*
import org.fbme.ide.iec61499.adapter.st.VariableReferenceByNode
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.*

class STInterpreter(private var context: Context) {
    fun interpret(expression: Expression): Value<*> = when (expression) {
        is VariableReference -> interpret(expression)
        is ArrayVariable -> error("TODO: Support ArrayVariable")
        is BinaryExpression -> interpret(expression)
        is ParenthesisExpression -> interpret(expression.innerExpression)
        is UnaryExpression -> interpret(expression)
        is Literal<*> -> Value(expression)
        is FunctionCall -> error("TODO: Support ArrayVariable")
        else -> error("unexpected expression")
    }

    private fun interpret(variableReference: VariableReference): Value<*> {
        val variableName = (variableReference as VariableReferenceByNode).reference.presentation
        return context.variables[variableName]
            ?: context.events[variableName]?.first?.let { Value(it) }
            ?: error("unexpected variable $variableName")
    }

    private fun interpret(binaryExpression: BinaryExpression): Value<*> {
        val left = binaryExpression.leftExpression ?: error("left expression is null")
        val right = binaryExpression.rightExpression ?: error("right expression is null")
        val leftValue = interpret(left)
        val rightValue = interpret(right)

        return when (binaryExpression.operation) {
            BinaryOperation.ADD -> leftValue + rightValue
            BinaryOperation.AMP -> leftValue amp rightValue
            BinaryOperation.AND -> leftValue and rightValue
            BinaryOperation.DIV -> leftValue / rightValue
            BinaryOperation.EQ -> Value(leftValue == rightValue)
            BinaryOperation.GT -> Value(leftValue > rightValue)
            BinaryOperation.GTE -> Value(leftValue >= rightValue)
            BinaryOperation.LT -> Value(leftValue < rightValue)
            BinaryOperation.LTE -> Value(leftValue <= rightValue)
            BinaryOperation.MOD -> leftValue % rightValue
            BinaryOperation.MUL -> leftValue * rightValue
            BinaryOperation.NEQ -> Value(leftValue != rightValue)
            BinaryOperation.OR -> leftValue or rightValue
            BinaryOperation.POW -> leftValue pow rightValue
            BinaryOperation.SUB -> leftValue - rightValue
            BinaryOperation.XOR -> leftValue xor rightValue
        }
    }

    private fun interpret(unaryExpression: UnaryExpression): Value<*> {
        val expr = unaryExpression.getInnerExpression() ?: error("expression is null")
        val value = interpret(expr)

        return when (unaryExpression.operation) {
            UnaryOperation.NOT -> !value
            UnaryOperation.NEG -> -value
        }
    }

    fun interpret(statement: Statement): Unit = when (statement) {
        is ReturnStatement -> {} // TODO
        is IfStatement -> interpret(statement)
        is WhileStatement -> interpret(statement)
        is RepeatStatement -> interpret(statement)
        is AssignmentStatement -> interpret(statement)
        is ForStatement -> interpret(statement)
        is ExitStatement -> {} // TODO
        is CaseStatement -> interpret(statement)
        is EmptyStatement -> {} // TODO
        else -> error("unexpected statement")
    }

    private fun interpret(ifStatement: IfStatement) {
        val condition = ifStatement.condition == null
                || interpret(ifStatement.condition!!).value as? Boolean ?: error("condition must be bool")
        if (condition) {
            for (statement in ifStatement.thenClause) {
                interpret(statement)
            }
        } else {
            var check = false
            for (elseIfClause in ifStatement.elseIfClauses) {
                val elseIfCondition = interpret(elseIfClause.condition!!).value as? Boolean
                    ?: error("condition must be bool")
                if (elseIfCondition) {
                    for (statement in elseIfClause.body) {
                        interpret(statement)
                    }
                    check = true
                    break
                }
            }
            if (!check && ifStatement.elseClause != null) {
                for (statement in ifStatement.elseClause!!) {
                    interpret(statement)
                }
            }
        }
    }

    private fun interpret(whileStatement: WhileStatement) {
        val conditionExpression = whileStatement.condition
        var condition = conditionExpression == null || interpret(conditionExpression).value as? Boolean
                ?: error("condition must be bool")
        while (condition) {
            for (statement in whileStatement.body) {
                interpret(statement)
            }
            condition = conditionExpression == null || interpret(conditionExpression).value as? Boolean
                    ?: error("condition must be bool")
        }
    }

    private fun interpret(repeatStatement: RepeatStatement) {
        val conditionExpression = repeatStatement.condition
        do {
            for (statement in repeatStatement.body) {
                interpret(statement)
            }
            val condition = conditionExpression == null || interpret(conditionExpression).value as? Boolean
                    ?: error("condition must be bool")
        } while (condition)
    }

    private fun interpret(assignmentStatement: AssignmentStatement) {
        val variableName = (assignmentStatement.variable as VariableReferenceByNode).reference.presentation
        val expression = assignmentStatement.expression ?: error("expression expected in assignment $variableName")
        val value = interpret(expression)
        context.variables[variableName] = value
    }

    private fun interpret(forStatement: ForStatement) {
        // TODO: implement for statement
    }

    private fun interpret(caseStatement: CaseStatement) {
        // TODO: implement case statement
    }
}