package org.fbme.lib.st.expressions

interface Literal<Value> : Expression {
    val kind: LiteralKind?
    var value: Value
}
