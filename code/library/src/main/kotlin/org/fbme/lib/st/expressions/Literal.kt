package org.fbme.lib.st.expressions

interface Literal<Value> : ParameterValue, Expression {
    val kind: LiteralKind?
    override var value: Value
}
