package org.fbme.smvDebugger.panel.condition

class Inequality(firsr: Expression, second: Expression) : AbstractEquality(firsr, second) {
    override fun evaluate(itemSimpleNameToValueMap: Map<String, String>): Boolean {
        if (first !is Argument) {
            return first.evaluate(itemSimpleNameToValueMap) != second.evaluate(itemSimpleNameToValueMap)
        }
        val value = second as Argument
        return itemSimpleNameToValueMap[first.content] != value.content
    }

    override val symbol: String
        get() = "!="
}
