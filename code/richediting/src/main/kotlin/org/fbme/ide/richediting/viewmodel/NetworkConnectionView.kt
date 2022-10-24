package org.fbme.ide.richediting.viewmodel

import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.iec61499.declarations.ParameterAssignment
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.jetbrains.mps.openapi.model.SNode

class NetworkConnectionView {
    private val myConnection: Any
    var connectionPath: ConnectionPath
        private set
    val isEditable: Boolean
    val associatedNode: SNode
    val kind: EntryKind

    constructor(connection: FBNetworkConnection, editable: Boolean) {
        myConnection = connection
        connectionPath = connection.path!!
        kind = connection.kind
        isEditable = editable
        associatedNode = (connection as PlatformElement).node
    }

    constructor(parameter: ParameterAssignment, editable: Boolean) {
        myConnection = parameter
        connectionPath = ConnectionPath()
        kind = EntryKind.DATA
        isEditable = editable
        associatedNode = (parameter as PlatformElement).node
    }

    fun shrink() {
        connectionPath = ConnectionPath()
    }

    fun setPath(path: ConnectionPath?) {
        val connection = connection
        if (isEditable && connection != null) {
            connection.path = path
        }
    }

    val connection: FBNetworkConnection?
        get() = if (myConnection is FBNetworkConnection) myConnection else null

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is NetworkConnectionView) {
            return false
        }
        return myConnection == other.myConnection
    }

    override fun hashCode(): Int {
        return myConnection.hashCode()
    }
}
