package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import java.util.*

interface FBNetwork : Element {
    /*readonly*/
    val customNetworkComponents: List<CustomNetworkComponent>

    /*readonly*/
    val contextComponents: List<FunctionBlockDeclarationBase>

    /*readonly*/
    val contextDataSources: List<ParameterDeclaration>

    /*readonly*/
    val contextDataDestinations: List<ParameterDeclaration>

    /*readonly*/
    val contextEventSources: List<EventDeclaration>

    /*readonly*/
    val contextEventDestinations: List<EventDeclaration>
    val functionBlocks: MutableList<FunctionBlockDeclaration>

    /*readonly*/
    val containedComponents: List<FunctionBlockDeclarationBase>
        get() = Collections.unmodifiableList<FunctionBlockDeclarationBase>(
            functionBlocks
        )
    val dataConnections: MutableList<FBNetworkConnection>
    val eventConnections: MutableList<FBNetworkConnection>
    val adapterConnections: MutableList<FBNetworkConnection>
    val prototype: FBNetwork?
    val endpointCoordinates: MutableList<EndpointCoordinate>
    val allComponents: List<FunctionBlockDeclarationBase>
        get() {
            val components = ArrayList<FunctionBlockDeclarationBase>()
            components.addAll(containedComponents)
            components.addAll(contextComponents)
            val prototype = prototype
            if (prototype != null) {
                components.addAll(prototype.allComponents)
            }
            return components
        }

    companion object {
        @JvmStatic
        fun extractNetwork(declaration: Declaration?): FBNetwork? {
            if (declaration is DeclarationWithNetwork) {
                return declaration.network
            }
            return null
        }
    }
}

interface CustomNetworkComponentProvider {
    fun getCustomNetworkComponents(): List<CustomNetworkComponent>
}

data class CustomNetworkComponent(
    val block: FunctionBlockDeclarationBase,
    val associatedElement: Element,
    val editable: Boolean = false,
)