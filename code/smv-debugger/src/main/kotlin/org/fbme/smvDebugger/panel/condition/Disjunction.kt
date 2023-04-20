package org.fbme.smvDebugger.panel.condition

class Disjunction(first: Expression, second: Expression) : BinaryExpression(first, second) {
    override fun evaluate(itemSimpleNameToValueMap: Map<String, String>): Boolean {
        return first.evaluate(itemSimpleNameToValueMap) || second.evaluate(itemSimpleNameToValueMap)
    }

    override val symbol: String
        get() = "||"
}
