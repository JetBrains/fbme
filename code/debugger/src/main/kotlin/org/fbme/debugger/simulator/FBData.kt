package org.fbme.debugger.simulator

interface FBData {
    val events: MutableMap<String, EventInfo>
    val variables: MutableMap<String, Value<*>>
}