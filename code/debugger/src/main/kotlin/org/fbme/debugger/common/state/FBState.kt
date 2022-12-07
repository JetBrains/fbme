package org.fbme.debugger.common.state

import org.fbme.debugger.common.value.Value

sealed interface FBState : State {
    val inputEvents: Map<String, Int>
    val outputEvents: Map<String, Int>
    val inputVariables: Map<String, Value<*>>
    val outputVariables: Map<String, Value<*>>

    override fun copy(): FBState
}