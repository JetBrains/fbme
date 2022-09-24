package org.fbme.smvDebugger.panel.condition

interface Expression {
    fun evaluate(itemSimpleNameToValueMap: Map<String, String>): Boolean
}
