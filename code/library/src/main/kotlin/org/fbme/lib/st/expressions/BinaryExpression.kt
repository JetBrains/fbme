package org.fbme.lib.st.expressions

interface BinaryExpression : Expression {
    val operation: BinaryOperation
    var leftExpression: Expression?
    var rightExpression: Expression?
}
