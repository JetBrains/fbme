package org.fbme.debugger.simulator

data class EventInfo(
    val isInput: Boolean,
    var isActive: Boolean,
    var count: Int
)