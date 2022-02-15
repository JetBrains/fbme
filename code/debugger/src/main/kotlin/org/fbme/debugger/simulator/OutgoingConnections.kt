package org.fbme.debugger.simulator

data class OutgoingConnections(
    var isActive: Boolean,
    val targets: MutableList<Port>
)