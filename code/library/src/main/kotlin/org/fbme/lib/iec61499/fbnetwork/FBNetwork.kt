package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import java.util.*

interface FBNetwork : Element {
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

    val allConnections: List<FBNetworkConnection>
        get() = eventConnections.union(dataConnections).union(adapterConnections).toList()

    fun getAllPorts(): List<FBPortDescriptor> {
        val result: MutableList<FBPortDescriptor> = mutableListOf()

        this.contextDataSources.forEachIndexed { index, it ->
            result.add(FBPortDescriptor(it.name, EntryKind.DATA, index, true, true, it))
        }

        this.contextEventSources.forEachIndexed { index, it ->
            result.add(FBPortDescriptor(it.name, EntryKind.EVENT, index, true, true, it))
        }

        this.contextDataDestinations.forEachIndexed { index, it ->
            result.add(FBPortDescriptor(it.name, EntryKind.DATA, index, false, true, it))
        }

        this.contextEventDestinations.forEachIndexed { index, it ->
            result.add(FBPortDescriptor(it.name, EntryKind.EVENT, index, false, true, it))
        }

        return result
    }

    fun getConnections(kind: EntryKind): MutableList<FBNetworkConnection>  {
        return when (kind) {
            EntryKind.EVENT -> this.eventConnections
            EntryKind.DATA -> this.dataConnections
            EntryKind.ADAPTER -> this.adapterConnections
        }
    }

    companion object {
        @JvmStatic
        fun extractNetwork(declaration: Declaration?): FBNetwork? {
            if (declaration is CompositeFBTypeDeclaration) {
                return declaration.network
            }
            if (declaration is SubapplicationTypeDeclaration) {
                return declaration.network
            }
            if (declaration is ApplicationDeclaration) {
                return declaration.network
            }
            if (declaration is ResourceDeclaration) {
                return declaration.network
            }
            return if (declaration is ResourceTypeDeclaration) {
                declaration.network
            } else null
        }
    }
}
