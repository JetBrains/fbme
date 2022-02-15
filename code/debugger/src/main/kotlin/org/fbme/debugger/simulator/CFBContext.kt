package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection

data class CFBContext(
    val events: MutableMap<String, EventInfo> = mutableMapOf(),
    val fbs: MutableMap<String, Simulator> = mutableMapOf(),
    val connections: MutableMap<Port, OutgoingConnections> = linkedMapOf()
) : Context {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this() {
        val network = fbDeclaration.network

        addEvents(fbDeclaration.inputEvents, true)
        addEvents(fbDeclaration.outputEvents, false)

        addFBs(network)

        addConnections(network.eventConnections)
        addConnections(network.dataConnections)
    }

    private fun addEvents(events: MutableList<EventDeclaration>, isInput: Boolean) {
        for (event in events) {
            val eventName = event.name
            this.events[eventName] = EventInfo(isInput, false, 0)
        }
    }

    private fun addConnections(connections: MutableList<FBNetworkConnection>) {
        for (connection in connections) {
            val source = Port(connection.sourceReference.presentation)
            val target = Port(connection.targetReference.presentation)

            val outgoingConnectionsFromSource = this.connections.getOrPut(source) { OutgoingConnections(false, mutableListOf()) }
            val targetsOfOutgoingConnectionsFromSource = outgoingConnectionsFromSource.targets
            targetsOfOutgoingConnectionsFromSource += target
        }
    }

    private fun addFBs(network: FBNetwork) {
        for (component in network.allComponents) {
            val componentDeclaration = component.type.declaration!!
            val fbName = componentDeclaration.name
            val simulator = when (componentDeclaration) {
                is BasicFBTypeDeclaration -> BFBSimulator(BFBContext(componentDeclaration))
                is CompositeFBTypeDeclaration -> CFBSimulator(CFBContext(componentDeclaration))
                else -> error("unexpected type")
            }
            fbs[fbName] = simulator
        }
    }
}