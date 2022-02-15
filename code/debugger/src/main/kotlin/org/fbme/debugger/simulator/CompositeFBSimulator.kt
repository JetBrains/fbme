package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeFBSimulator(private val fbData: CompositeFBData) : FBSimulator {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this(CompositeFBData(fbDeclaration))

    @Synchronized
    override fun triggerEvent(eventName: String): LinkedHashSet<String> {
        val activeOutputEvents = linkedSetOf<String>()

        val source = NetworkPort(fb = "", port = eventName)
        val outgoingConnections = fbData.connections[source]!!
        for (target in outgoingConnections) {
            if (target.fb == "") {
                activeOutputEvents += target.port
            } else {
                triggerInnerNetworkPort(target, activeOutputEvents)
            }
        }

        return activeOutputEvents
    }

    private fun triggerInnerNetworkPort(networkPort: NetworkPort, activeOutputEvents: LinkedHashSet<String>) {
        val fbSimulator = fbData.fbs[networkPort.fb]!!
        val affectedEvents = fbSimulator.triggerEvent(networkPort.port)
        for (affectedEvent in affectedEvents) {
            val nextPorts = fbData.connections[NetworkPort(fb = networkPort.fb, port = affectedEvent)]!!
            for (nextPort in nextPorts) {
                if (nextPort.fb == "") {
                    activeOutputEvents += nextPort.port
                } else {
                    triggerInnerNetworkPort(nextPort, activeOutputEvents)
                }
            }
        }
    }
}