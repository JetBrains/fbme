package org.fbme.ide.platform.debugger

import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import java.io.IOException

interface DeviceConnector {
    @Throws(IOException::class)
    fun tryConnect(device: DeviceDeclaration): DeviceConnection?
}
