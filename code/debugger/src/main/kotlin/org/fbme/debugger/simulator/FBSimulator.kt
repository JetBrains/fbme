package org.fbme.debugger.simulator

import org.fbme.debugger.common.state.Value

interface FBSimulator : Simulator {
    fun triggerEvent(eventName: String)
    fun setVariable(variableName: String, value: Value<Any?>)
}