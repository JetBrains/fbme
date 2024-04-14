package org.fbme.ide.richediting.utils

import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.AssignmentStatement

class STFactoryUtils(
    private val stFactory: STFactory,
) {
    fun intEquality(variable: VariableDeclaration, number: Int): BinaryExpression {
        val equality = stFactory.createBinaryExpression(BinaryOperation.EQ)

        val numberLiteral = createIntLiteral(number)
        equality.rightExpression = numberLiteral

        equality.leftExpression = createVariable(variable)
        return equality
    }

    fun createIntLiteral(number: Int): Literal<Int?> {
        val numberLiteral = stFactory.createLiteral(LiteralKind.DEC_INT) as Literal<Int?>
        numberLiteral.value = number
        return numberLiteral
    }

    fun createAssign(
        variable: VariableDeclaration,
        assignable: Expression,
    ): AssignmentStatement {
        val assignment = stFactory.createAssignmentStatement()
        assignment.variable = createVariable(variable)
        assignment.expression = assignable
        return assignment
    }

    fun createVariable(variable: VariableDeclaration): VariableReference {
        val variableReference = stFactory.createVariableReference()
        variableReference.reference.setTarget(variable)
        return variableReference
    }
}