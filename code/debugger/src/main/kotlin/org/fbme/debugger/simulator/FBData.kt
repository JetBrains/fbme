package org.fbme.debugger.simulator

interface FBData {
    val inputEvents: LinkedHashMap<String, EventInfo>
    val outputEvents: LinkedHashMap<String, EventInfo>
    val inputVariables: LinkedHashMap<String, Value<*>>
    val outputVariables: LinkedHashMap<String, Value<*>>
    val associations: MutableMap<String, Set<String>>

    fun activateEvent(eventName: String)
    fun deactivateEvent(eventName: String)
}