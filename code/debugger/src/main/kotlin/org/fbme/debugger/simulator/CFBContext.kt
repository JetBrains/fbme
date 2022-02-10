package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection

data class CFBContext(
    val fbs: MutableMap<String, Context> = mutableMapOf(),
    val connections: MutableMap<Pair<String, String>, MutableList<Pair<String, String>>> = mutableMapOf()
) : Context {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this() {
        val network = fbDeclaration.network

        addFBs(network)

        addConnections(network.eventConnections)
        addConnections(network.dataConnections)
    }

    private fun addConnections(connections: MutableList<FBNetworkConnection>) {
        for (connection in connections) {
            val from = connection.sourceReference.presentation.split('.')
            val to = connection.targetReference.presentation.split('.')
            val fromPath = if (from.size > 1) Pair(from[0], from[1]) else Pair("", from[0])
            val toPath = if (to.size > 1) Pair(to[0], to[1]) else Pair("", to[0])

            this.connections.getOrPut(fromPath) { mutableListOf() } += toPath
        }
    }

    private fun addFBs(network: FBNetwork) {
        for (component in network.allComponents) {
            val fbName: String
            val context: Context
            when (val componentDeclaration = component.type.declaration) {
                is BasicFBTypeDeclaration -> {
                    fbName = componentDeclaration.name
                    context = BFBContext(componentDeclaration)
                }
                is CompositeFBTypeDeclaration -> {
                    fbName = componentDeclaration.name
                    context = CFBContext(componentDeclaration)
                }
                else -> continue
            }
            fbs[fbName] = context
        }
    }
}