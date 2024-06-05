package org.fbme.ide.platform.debugger

import com.intellij.openapi.Disposable
import com.intellij.openapi.extensions.ExtensionPointName
import org.fbme.ide.platform.deploy.controllers.DeviceController
import org.fbme.ide.platform.deploy.controllers.DeviceControllerFactory
import org.fbme.ide.platform.deploy.exceptions.DeploymentException
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.slf4j.LoggerFactory
import java.io.IOException
import java.util.concurrent.ConcurrentHashMap

class DevicesFacade : Disposable {
    private val connections: MutableMap<Identifier, DeviceController> = ConcurrentHashMap()

    fun attach(device: DeviceDeclaration): DeviceController {
        return connections.getOrPut(device.identifier) { createConnection(device) }
    }

    fun invalidate(device: DeviceDeclaration) {
        connections.remove(device.identifier)
    }

    private fun createConnection(device: DeviceDeclaration): DeviceController {
        for (connector in DeviceConnectorRegistry.instance.connectors) {
            try {
                val factory = EP_NAME.extensionList[0]
                val controller = factory.createFordiacDynamicTypeLoadController(device)
                controller.connect()

                return controller
            } catch (e: IOException) {
                if (LOG.isErrorEnabled) {
                    LOG.error(
                        "Deployment controller thrown on device '${device.name}' connecting via DevicesFacade#attach",
                        e
                    )
                }
            }
        }
        error("Unable to connect to device: ${device.identifier}")
    }

    fun stop() {
        for (connection in connections.values) {
            try {
                connection.disconnect()
            } catch (e: DeploymentException) {
                if (LOG.isErrorEnabled) {
                    LOG.error("$connection thrown on closing via DevicesFacade#stop", e)
                }
            }
        }
        connections.clear()
    }

    override fun dispose() {
        stop()
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(DevicesFacade::class.java)

        private val EP_NAME =
            ExtensionPointName.create<DeviceControllerFactory>("fbme.platform.DeviceControllerFactoryEP")

    }
}
