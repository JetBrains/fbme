package org.fbme.smvDebugger.panel.condition

class Negation(val expression: Expression) : Expression {
    override fun evaluate(itemSimpleNameToValueMap: Map<String, String>): Boolean {
        return !expression.evaluate(itemSimpleNameToValueMap)
    }

    override fun toString(): String {
        return "!($expression)"
    }
}
