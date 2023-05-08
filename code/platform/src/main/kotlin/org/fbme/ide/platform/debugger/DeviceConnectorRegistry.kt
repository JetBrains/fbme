package org.fbme.ide.platform.debugger

import jetbrains.mps.util.containers.ConcurrentHashSet

class DeviceConnectorRegistry private constructor() {
    val connectors: MutableSet<DeviceConnector> = ConcurrentHashSet()

    fun register(connector: DeviceConnector) {
        connectors.add(connector)
    }

    fun unregister(connector: DeviceConnector) {
        connectors.remove(connector)
    }

    companion object {
        val instance = DeviceConnectorRegistry()
    }
}
