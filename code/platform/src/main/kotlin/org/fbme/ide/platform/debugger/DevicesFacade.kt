package org.fbme.ide.platform.debugger

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.slf4j.LoggerFactory
import java.io.IOException
import java.util.concurrent.ConcurrentHashMap

class DevicesFacade {
    private val connections: MutableMap<Identifier, DeviceConnection?> = ConcurrentHashMap()

    fun attach(device: DeviceDeclaration): DeviceConnection? {
        var connection = connections[device.identifier]
        if (connection == null || !connection.isAlive) {
            connection = createConnection(device)
            connections[device.identifier] = connection
        }
        return connection
    }

    fun invalidate(device: DeviceDeclaration) {
        connections.remove(device.identifier)
    }

    private fun createConnection(device: DeviceDeclaration): DeviceConnection? {
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
        return null
    }

    fun start() {
        instance = this
    }

    fun stop() {
        instance = null
        for (connection in connections.values) {
            try {
                connection!!.close()
            } catch (e: IOException) {
                if (LOG.isErrorEnabled) {
                    LOG.error(connection.toString() + " thrown on closing via DevicesFacade#stop", e)
                }
            }
        }
        connections.clear()
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(DevicesFacade::class.java)
        var instance: DevicesFacade? = null
            private set
    }
}
