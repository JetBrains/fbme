package org.fbme.ide.platform.deploy.controllers

import org.fbme.ide.platform.debugger.Watchable
import org.fbme.ide.platform.deploy.communication.DeviceCommunicationHandler
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection

/**
 * The DeviceController interface defines methods for controlling devices and resources in runtime environment.
 * It provides functionality for connecting to devices, creating resources, managing connections, and monitoring resources.
 * Implementations of this interface should handle communication with devices and perform necessary operations.
 *
 * Implementors should also adhere to the {@link AutoCloseable} contract, allowing the controller to be used in
 * try-with-resources constructs for proper resource management.
 *
 * @see AutoCloseable
 */
interface DeviceController : AutoCloseable {
    /**
     * Establishes a connection to the device.
     */
    fun connect()

    /**
     * Checks if the device is currently connected.
     *
     * @return true if the device is connected, false otherwise.
     */
    fun isConnected(): Boolean

    /**
     * Terminates the connection with the device.
     */
    fun disconnect()

    override fun close() {
        disconnect()
    }

    /**
     * Creates a communication handler for the device.
     * This method creates an instance of {@link DeviceCommunicationHandler} for handling communication with the device.
     *
     * @return An instance of DeviceCommunicationHandler.
     */
    fun createDeviceCommunicationHandler(): DeviceCommunicationHandler

    /**
     * Creates and deploys the specified resource, including its network, on the device.
     *
     *  **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration to deploy.
     * @return true if the deployment is successful, false otherwise.
     */
    fun createNetwork(resource: ResourceDeclaration): Boolean

    /**
     * Creates a resource on the device.
     *
     * This method sends a request to the device to create the specified resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration to create.
     * @return true if the resource creation is successful, false otherwise.
     */
    fun createResource(resource: ResourceDeclaration): Boolean

    /**
     * Writes a parameter value to the specified resource.
     *
     * This method sends a request to the device to write the specified parameter value to the given resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration containing the parameter.
     * @param parameter The parameter assignment specifying the parameter to write.
     * @return true if the parameter write operation is successful, false otherwise.
     */
    fun writeResourceParameter(resource: ResourceDeclaration, parameter: ParameterAssignment): Boolean

    /**
     * Writes a parameter value to the specified function block within a resource.
     *
     * This method sends a request to the device to write the specified parameter value to the given function block
     * within a resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration containing the function block.
     * @param parameter The parameter assignment specifying the parameter to write.
     * @return true if the parameter write operation is successful, false otherwise.
     */
    fun writeFBParameter(resource: ResourceDeclaration, parameter: ParameterAssignment): Boolean

    /**
     * Writes a parameter value to the specified device.
     *
     * This method sends a request to the device to write the specified parameter value to the given device.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param device The device declaration containing the parameter.
     * @param parameter The parameter assignment specifying the parameter to write.
     * @return true if the parameter write operation is successful, false otherwise.
     */
    fun writeDeviceParameter(device: DeviceDeclaration, parameter: ParameterAssignment): Boolean

    /**
     * Creates an instance of a function block within a resource.
     *
     * This method sends a request to the device to create an instance of the specified function block within the given resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration to create the function block instance in.
     * @param fb The function block declaration specifying the type of function block to create.
     * @return true if the function block instance creation is successful, false otherwise.
     */
    fun createFBInstance(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean

    /**
     * Creates a connection between function blocks within a resource.
     *
     * This method sends a request to the device to create a connection between specified function blocks within the given resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration containing the function blocks to connect.
     * @param connection The connection declaration specifying the connection to create.
     * @return true if the connection creation is successful, false otherwise.
     */
    fun createConnection(resource: ResourceDeclaration, connection: FBNetworkConnection): Boolean

    /**
     * Starts the specified resource.
     *
     * This method sends a request to the device to start the specified resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration to start.
     * @return true if the resource start operation is successful, false otherwise.
     */
    fun startResource(resource: ResourceDeclaration): Boolean

    /**
     * Starts the device.
     *
     * This method sends a request to the device to start.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param device The device type declaration to start.
     * @return true if the device start operation is successful, false otherwise.
     */
    fun startDevice(device: DeviceTypeDeclaration): Boolean

    /**
     * Deletes the specified resource from the device.
     *
     * This method sends requests to the device to delete the specified resource.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration to delete.
     * @return true if the resource deletion is successful, false otherwise.
     */
    fun deleteResource(resource: ResourceDeclaration): Boolean

    /**
     * Deletes the specified function block from the device.
     *
     * This method sends requests to the device to delete the specified function block.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration containing the function block to delete.
     * @param fb The function block declaration to delete.
     * @return true if the function block deletion is successful, false otherwise.
     */
    fun deleteFB(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean

    /**
     * Deletes the specified connection from the device.
     *
     * This method sends requests to the device to delete the specified connection.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param resource The resource declaration containing the connection to delete.
     * @param connection The connection declaration to delete.
     * @return true if the connection deletion is successful, false otherwise.
     */
    fun deleteConnection(resource: ResourceDeclaration, connection: FBNetworkConnection): Boolean

    /**
     * Kills the specified device.
     *
     * This method sends a request to the device to terminate the specified device.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param device The device type declaration to kill.
     * @return true if the device termination is successful, false otherwise.
     */
    fun killDevice(device: DeviceTypeDeclaration): Boolean

    /**
     * Queries the resources available on the device.
     *
     * This method sends a request to the device to retrieve information about available resources.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @return a list of resource declarations representing the resources available on the device.
     */
    fun queryResources(): List<ResourceDeclaration>

    // monitoring commands

    /**
     * Reads the current watches set on the device.
     *
     * This method sends a request to the device to retrieve information about currently set watches.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @return a string representation of the watches set on the device.
     */
    fun readWatches(): String

    /**
     * Adds a watch to the specified watchable element.
     *
     * This method sends a request to the device to add a watch to the specified watchable element.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param watchable The watchable element to add a watch to.
     * @return true if the watch addition is successful, false otherwise.
     */
    fun addWatch(watchable: Watchable): Boolean

    /**
     * Removes a watch from the specified watchable element.
     *
     * This method sends a request to the device to remove a watch from the specified watchable element.
     *
     * **Precondition**: This `DeviceController` must be connected to the device.
     *
     * @param watchable The watchable element to remove a watch from.
     * @return true if the watch removal is successful, false otherwise.
     */
    fun removeWatch(watchable: Watchable): Boolean
//    fun triggerEvent(element: MonitoringBaseElement)
//    fun forceValue(element: MonitoringBaseElement, String value)
//    fun clearForce(element: MonitoringBaseElement)
}
