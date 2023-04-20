package org.fbme.lib.st.expressions

interface ParenthesisExpression : Expression {
    var innerExpression: Expression
}
