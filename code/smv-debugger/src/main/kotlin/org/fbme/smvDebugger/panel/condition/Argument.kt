package org.fbme.smvDebugger.panel.condition

class Argument(val content: String) : Expression {
    override fun evaluate(itemSimpleNameToValueMap: Map<String, String>): Boolean {
        return true
    }

    override fun toString(): String {
        return content
    }
}
