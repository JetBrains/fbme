package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection

class CompositeFBData(fbDeclaration: CompositeFBTypeDeclaration) : FBDataImpl(fbDeclaration) {
    val fbs: LinkedHashMap<String, FBSimulator> = linkedMapOf()
    val connections: LinkedHashMap<FBPort, MutableList<FBPort>> = linkedMapOf()

    init {
        val network = fbDeclaration.network

        addFBs(network)

        addConnections(network.eventConnections)
        addConnections(network.dataConnections)
    }

    private fun addConnections(connections: MutableList<FBNetworkConnection>) {
        for (connection in connections) {
            val source = FBPort(connection.sourceReference.presentation)
            val target = FBPort(connection.targetReference.presentation)

            val outgoingConnectionsFromSource = this.connections.getOrPut(source) { mutableListOf() }
            outgoingConnectionsFromSource += target
        }
    }

    private fun addFBs(network: FBNetwork) {
        for (component in network.allComponents) {
            val componentDeclaration = component.type.declaration!!
            val fbName = componentDeclaration.name
            val simulator = when (componentDeclaration) {
                is BasicFBTypeDeclaration -> BasicFBSimulator(BasicFBData(componentDeclaration))
                is CompositeFBTypeDeclaration -> CompositeFBSimulator(CompositeFBData(componentDeclaration))
                else -> error("unexpected type")
            }
            fbs[fbName] = simulator
        }
    }
}