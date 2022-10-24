package org.fbme.lib.st.expressions

interface FunctionCall : Expression {
    var functionName: String
    val actualParameters: MutableList<Expression?>
}
