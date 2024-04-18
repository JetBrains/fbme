package org.fbme.ide.platform.deploy.controllers

import org.fbme.ide.platform.debugger.Watchable
import org.fbme.ide.platform.deploy.communication.DeviceCommunicationHandler
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection

interface DeviceController : AutoCloseable {
    fun connect()
    fun isConnected(): Boolean
    fun disconnect()
    override fun close() {
        disconnect()
    }

    fun createDeviceCommunicationHandler(): DeviceCommunicationHandler

    fun createNetwork(resource: ResourceDeclaration): Boolean
    fun createResource(resource: ResourceDeclaration): Boolean
    fun writeResourceParameter(resource: ResourceDeclaration, parameter: ParameterAssignment): Boolean
    fun writeFBParameter(resource: ResourceDeclaration, parameter: ParameterAssignment): Boolean
    fun writeDeviceParameter(device: DeviceDeclaration, parameter: ParameterAssignment): Boolean
    fun createFBInstance(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean
    fun createConnection(resource: ResourceDeclaration, connection: FBNetworkConnection): Boolean

    fun startResource(resource: ResourceDeclaration): Boolean
    fun startDevice(device: DeviceTypeDeclaration): Boolean
    fun deleteResource(resource: ResourceDeclaration): Boolean

    fun deleteFB(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean
    fun deleteConnection(resource: ResourceDeclaration, connection: FBNetworkConnection): Boolean
    fun killDevice(device: DeviceTypeDeclaration): Boolean
    fun queryResources(): List<ResourceDeclaration>

    // monitoring commands
    fun readWatches(): String
    fun addWatch(watchable: Watchable): Boolean
    fun removeWatch(watchable: Watchable): Boolean
//    fun triggerEvent(element: MonitoringBaseElement)
//    fun forceValue(element: MonitoringBaseElement, String value)
//    fun clearForce(element: MonitoringBaseElement)
}
