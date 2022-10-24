package org.fbme.smvDebugger.panel.condition

abstract class BinaryExpression(val first: Expression, val second: Expression) : Expression {
    override fun toString(): String {
        return "($first $symbol $second)"
    }

    protected abstract val symbol: String
}
