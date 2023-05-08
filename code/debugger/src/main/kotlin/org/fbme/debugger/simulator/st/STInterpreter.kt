package org.fbme.debugger.simulator.st

import org.fbme.debugger.common.value.Value
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.*

class STInterpreter(
    private val inputVariables: MutableMap<String, Value<*>>,
    private val internalVariables: MutableMap<String, Value<*>>,
    private val outputVariables: MutableMap<String, Value<*>>,
) {
    fun interpret(expression: Expression): Value<*> = when (expression) {
        is VariableReference -> interpret(expression)
        is ArrayVariable -> TODO("Not yet implemented")
        is BinaryExpression -> interpret(expression)
        is ParenthesisExpression -> interpret(expression.innerExpression)
        is UnaryExpression -> interpret(expression)
        is Literal<*> -> Value.fromSTLiteral(expression)
        is FunctionCall -> TODO("Not yet implemented")
    }

    private fun interpret(variableReference: VariableReference): Value<*> {
        return findVariable(variableReference.reference.presentation)
    }

    private fun findVariable(variableName: String): Value<*> {
        return inputVariables[variableName]
            ?: internalVariables[variableName]
            ?: outputVariables[variableName]
            ?: error("unexpected variable $variableName")
    }

    private fun interpret(binaryExpression: BinaryExpression): Value<*> {
        val left = checkNotNull(binaryExpression.leftExpression)
        val right = checkNotNull(binaryExpression.rightExpression)
        val leftValue = interpret(left)
        val rightValue = interpret(right)

        return binaryExpression.operation.apply(leftValue, rightValue)
    }

    private fun interpret(unaryExpression: UnaryExpression): Value<*> {
        val expr = checkNotNull(unaryExpression.getInnerExpression())
        val value = interpret(expr)

        return unaryExpression.operation.apply(value)
    }

    fun interpret(statement: Statement): Unit = when (statement) {
        is ReturnStatement -> TODO("Not yet implemented")
        is IfStatement -> interpret(statement)
        is WhileStatement -> interpret(statement)
        is RepeatStatement -> interpret(statement)
        is AssignmentStatement -> interpret(statement)
        is ForStatement -> interpret(statement)
        is ExitStatement -> TODO("Not yet implemented")
        is CaseStatement -> interpret(statement)
        is EmptyStatement -> TODO("Not yet implemented")
    }

    private fun interpret(ifStatement: IfStatement) {
        val condition = ifStatement.condition
        if (condition == null || interpretCondition(condition)) {
            ifStatement.thenClause.forEach(::interpret)
        } else {
            var anyElseIfConditionHasPassed = false
            for (elseIfClause in ifStatement.elseIfClauses) {
                val elseIfCondition = elseIfClause.condition
                if (elseIfCondition == null || interpretCondition(elseIfCondition)) {
                    elseIfClause.body.forEach(::interpret)
                    anyElseIfConditionHasPassed = true
                    break
                }
            }
            val elseClause = ifStatement.elseClause
            if (!anyElseIfConditionHasPassed && elseClause != null) {
                elseClause.forEach(::interpret)
            }
        }
    }

    private fun interpretCondition(condition: Expression) = interpret(condition).value as? Boolean
        ?: error("Condition must be bool")

    private fun interpret(whileStatement: WhileStatement) {
        val conditionExpression = whileStatement.condition
        while (conditionExpression == null || interpretCondition(conditionExpression)) {
            whileStatement.body.forEach(::interpret)
        }
    }

    private fun interpret(repeatStatement: RepeatStatement) {
        val conditionExpression = repeatStatement.condition
        do {
            repeatStatement.body.forEach(::interpret)
        } while (conditionExpression == null || interpretCondition(conditionExpression))
    }

    private fun interpret(assignmentStatement: AssignmentStatement) {
        val variableName = (assignmentStatement.variable as VariableReference).reference.presentation
        val expression = assignmentStatement.expression ?: error("expression expected in assignment $variableName")
        val value = interpret(expression)
        when (variableName) {
            in inputVariables -> inputVariables[variableName] = value.copy()
            in internalVariables -> internalVariables[variableName] = value.copy()
            in outputVariables -> outputVariables[variableName] = value.copy()
            else -> error("unknown variable $variableName")
        }
    }

    private fun interpret(@Suppress("UNUSED_PARAMETER") forStatement: ForStatement): Unit =
        TODO("Not yet implemented")

    private fun interpret(@Suppress("UNUSED_PARAMETER") caseStatement: CaseStatement): Unit =
        TODO("Not yet implemented")
}