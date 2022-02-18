package org.fbme.debugger.simulator

interface FBSimulator {
    val fbData: FBData
    fun triggerEvent(eventName: String)
    fun setVariable(variableName: String, value: Value<*>) {
        fbData.inputVariables[variableName] = value
    }
}