package org.fbme.ide.integration.fordiac.deploy.controllers

import org.fbme.ide.integration.fordiac.deploy.communication.DeviceCommunicationHandler
import org.fbme.ide.integration.fordiac.deploy.exceptions.DeploymentException
import org.fbme.lib.iec61499.declarations.DeviceDeclaration

abstract class AbstractDeviceController(
    private val device: DeviceDeclaration
) : DeviceController {
    private val communicationHandler: DeviceCommunicationHandler = this.createDeviceCommunicationHandler()
    protected var fbTypes: MutableSet<String> = mutableSetOf()
    protected var adapterTypes: MutableSet<String> = mutableSetOf()

    override fun connect() {
        if (device.typeReference.presentation != "FORTE_PC") {
            throw DeploymentException("Connection is available only for FORTE_PC.")
        }
        val address = device.parameters.firstOrNull { it.parameterReference.presentation == "MGR_ID" }?.value?.value
            ?: throw DeploymentException("Failed to find MGR_ID in device '${device.name}'.")

        val (ip, port) = address.toString().split(":")

        communicationHandler.connect(ip, port.toInt())
    }

    override fun isConnected(): Boolean = communicationHandler.isConnected()

    override fun disconnect() {
        communicationHandler.disconnect()
    }

    protected fun sendRequest(destination: String, request: String): String {
        return communicationHandler.send(destination, request)
    }

    fun resetTypes() {
        fbTypes.clear()
        adapterTypes.clear()
    }

    protected fun isFBNotLoaded(typeName: String) = !fbTypes.contains(typeName)
}
