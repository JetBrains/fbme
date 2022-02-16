package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection

data class CompositeFBData(
    override val events: MutableMap<String, EventInfo> = mutableMapOf(),
    override val variables: MutableMap<String, Value<*>> = mutableMapOf(),
    override val associations: MutableMap<String, Set<String>> = mutableMapOf(),
    val fbs: MutableMap<String, FBSimulator> = mutableMapOf(),
    val connections: MutableMap<FBPort, MutableList<FBPort>> = linkedMapOf(),
) : FBDataImpl() {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this() {
        val network = fbDeclaration.network

        val typeDescriptor = fbDeclaration.typeDescriptor

        addEvents(typeDescriptor.eventInputPorts)
        addEvents(typeDescriptor.eventOutputPorts)

        addVariables(typeDescriptor.dataInputPorts)
        addVariables(typeDescriptor.dataOutputPorts)

        addFBs(network)

        addConnections(network.eventConnections)
        addConnections(network.dataConnections)

        addAssociations(typeDescriptor)
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