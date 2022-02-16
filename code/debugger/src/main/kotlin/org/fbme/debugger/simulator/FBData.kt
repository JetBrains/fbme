package org.fbme.debugger.simulator

interface FBData {
    val events: MutableMap<String, EventInfo>
    val variables: MutableMap<String, Value<*>>
    val associations: MutableMap<String, Set<String>>

    fun activateEvent(eventName: String)
    fun deactivateEvent(eventName: String)
}