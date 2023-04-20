package org.fbme.ide.richediting.viewmodel

import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.EndpointCoordinate
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FBNetwork

data class InterfaceEndpointView(
    private val network: FBNetwork,
    private val endpointCoordinate: EndpointCoordinate,
    val position: Int,
    override val kind: EntryKind,
    val isSource: Boolean,
    val target: Declaration
) : NetworkComponentView, NetworkPortView {

    val associatedNode = (target as PlatformElement).node
    val name = target.name

    //            endpointCoordinate.getPortReference().setFQName(myName);
    var x: Int
        get() = endpointCoordinate.x
        set(x) {
            endpointCoordinate.x = x
            if (endpointCoordinate.container == null) {
                endpointCoordinate.portReference.setPath(listOf(target.identifier))
                //            endpointCoordinate.getPortReference().setFQName(myName);
                network.endpointCoordinates.add(endpointCoordinate)
            }
        }

    //            endpointCoordinate.getPortReference().setFQName(myName);
    var y: Int
        get() = endpointCoordinate.y
        set(y) {
            endpointCoordinate.y = y
            if (endpointCoordinate.container == null) {
                endpointCoordinate.portReference.setPath(listOf(target.identifier))
                //            endpointCoordinate.getPortReference().setFQName(myName);
                network.endpointCoordinates.add(endpointCoordinate)
            }
        }
    override val component: NetworkComponentView
        get() = this
    override val isEditable: Boolean
        get() = true

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is InterfaceEndpointView) {
            return false
        }
        return position == other.position && kind == other.kind && isSource == other.isSource
    }
}
