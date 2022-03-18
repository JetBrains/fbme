package org.fbme.debugger.common.state

interface FBState {
    val inputEvents: Map<String, Int>
    val outputEvents: Map<String, Int>
    val inputVariables: Map<String, Value<Any?>>
    val outputVariables: Map<String, Value<Any?>>
}