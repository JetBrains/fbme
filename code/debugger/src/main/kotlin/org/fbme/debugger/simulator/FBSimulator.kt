package org.fbme.debugger.simulator

interface FBSimulator {
    val fbData: FBData
    fun triggerEvent(eventName: String)
}