package org.fbme.debugger.simulator

interface FBSimulator {
    fun triggerEvent(eventName: String): LinkedHashSet<String>
}