package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.st.types.ElementaryType

data class CompositeFBData(
    override val events: MutableMap<String, EventInfo> = mutableMapOf(),
    override val variables: MutableMap<String, Value<*>> = mutableMapOf(),
    val fbs: MutableMap<String, FBSimulator> = mutableMapOf(),
    val connections: MutableMap<NetworkPort, MutableList<NetworkPort>> = linkedMapOf()
) : FBData {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this() {
        val network = fbDeclaration.network

        addEvents(fbDeclaration.inputEvents)
        addEvents(fbDeclaration.outputEvents)

        addVariables(fbDeclaration.inputParameters)
        addVariables(fbDeclaration.outputParameters)

        addFBs(network)

        addConnections(network.eventConnections)
        addConnections(network.dataConnections)
    }

    private fun addVariables(variables: MutableList<ParameterDeclaration>) {
        for (variable in variables) {
            val initialLiteral = variable.initialValue
            val initialValue: Value<*> =
                if (initialLiteral != null) Value(initialLiteral.value)
                else (variable.type as? ElementaryType)?.defaultValue ?: error("smth went wrong")
            this.variables[variable.name] = initialValue
        }
    }

    private fun addEvents(events: MutableList<EventDeclaration>) {
        for (event in events) {
            val eventName = event.name
            this.events[eventName] = EventInfo(false, 0)
        }
    }

    private fun addConnections(connections: MutableList<FBNetworkConnection>) {
        for (connection in connections) {
            val source = NetworkPort(connection.sourceReference.presentation)
            val target = NetworkPort(connection.targetReference.presentation)

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