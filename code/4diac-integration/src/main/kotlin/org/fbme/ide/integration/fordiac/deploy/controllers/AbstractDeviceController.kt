package org.fbme.ide.integration.fordiac.deploy.controllers

import org.fbme.ide.integration.fordiac.deploy.communication.TCPDeviceCommunicationHandler
import org.fbme.ide.platform.deploy.communication.DeviceCommunicationHandler
import org.fbme.ide.platform.deploy.controllers.DeviceController
import org.fbme.ide.platform.deploy.exceptions.DeploymentException
import org.fbme.lib.iec61499.declarations.DeviceDeclaration

/**
 * This abstract class serves as a controller to handle user requests into 4diac FORTE runtime.
 * It provides functionality for connecting to and disconnecting from devices, sending requests, and managing communication.
 *
 * @param device The device declaration associated with this controller.
 */
abstract class AbstractDeviceController(
    private val device: DeviceDeclaration
) : DeviceController {
    private val communicationHandler: DeviceCommunicationHandler = this.createDeviceCommunicationHandler()
    protected var fbTypes: MutableSet<String> = mutableSetOf()
    protected var adapterTypes: MutableSet<String> = mutableSetOf()

    /**
     * Connects to the device.
     *
     * @throws DeploymentException if the device type is not "FORTE_PC" or if MGR_ID parameter is not found.
     */
    override fun connect() {
        if (device.typeReference.presentation != "FORTE_PC") {
            throw DeploymentException("Connection is available only for FORTE_PC.")
        }
        val address = device.parameters.firstOrNull { it.parameterReference.presentation == "MGR_ID" }?.value?.value
            ?: throw DeploymentException("Failed to find MGR_ID in device '${device.name}'.")

        val (ip, port) = address.toString().split(":")

        communicationHandler.connect(ip, port.toInt())
    }

    /**
     * Checks if the device is currently connected.
     *
     * @return true if the device is connected, false otherwise.
     */
    override fun isConnected(): Boolean = communicationHandler.isConnected()

    /**
     * Disconnects from the device.
     *
     * @throws DeploymentException if an error occurs during disconnection.
     */
    override fun disconnect() {
        communicationHandler.disconnect()
    }

    /**
     * Sends a request to the specified destination.
     *
     * @param destination The destination to send the request to.
     * @param request The request to send.
     * @return The response received from the destination.
     * @throws DeploymentException if an error occurs during the sending or receiving process.
     */
    protected fun sendRequest(destination: String, request: String): String {
        return communicationHandler.send(destination, request)
    }

    /**
     * Resets the sets of FB types and adapter types.
     * This method clears the currently stored types.
     */
    fun resetTypes() {
        fbTypes.clear()
        adapterTypes.clear()
    }

    /**
     * Checks if a certain FB type is not loaded.
     *
     * @param typeName The name of the FB type to check.
     * @return true if the FB type is not loaded, false otherwise.
     */
    protected fun isFBNotLoaded(typeName: String) = !fbTypes.contains(typeName)

    /**
     * Creates a device communication handler.
     *
     * @return An instance of DeviceCommunicationHandler.
     */
    override fun createDeviceCommunicationHandler(): DeviceCommunicationHandler = TCPDeviceCommunicationHandler()
}
