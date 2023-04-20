package org.fbme.lib.st.expressions

interface UnaryExpression : Expression {
    val operation: UnaryOperation
    fun getInnerExpression(): Expression?
    fun setInnerExpression(expression: Expression)
}
