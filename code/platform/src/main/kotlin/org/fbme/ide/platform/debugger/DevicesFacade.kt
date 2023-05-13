package org.fbme.ide.platform.debugger

import com.intellij.openapi.Disposable
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.slf4j.LoggerFactory
import java.io.IOException
import java.util.concurrent.ConcurrentHashMap

class DevicesFacade : Disposable {
    private val connections: MutableMap<Identifier, DeviceConnection> = ConcurrentHashMap()

    fun attach(device: DeviceDeclaration): DeviceConnection {
        return connections.getOrPut(device.identifier) { createConnection(device) }
    }

    fun invalidate(device: DeviceDeclaration) {
        connections.remove(device.identifier)
    }

    private fun createConnection(device: DeviceDeclaration): DeviceConnection {
        for (connector in DeviceConnectorRegistry.instance.connectors) {
            try {
                val c = connector.tryConnect(device)
                if (c != null) {
                    return c
                }
            } catch (e: IOException) {
                if (LOG.isErrorEnabled) {
                    LOG.error("$connector thrown on device connecting via DevicesFacade#attach", e)
                }
            }
        }
        error("Unable to connect to device: ${device.identifier}")
    }

    fun stop() {
        for (connection in connections.values) {
            try {
                connection.close()
            } catch (e: IOException) {
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
    }
}
