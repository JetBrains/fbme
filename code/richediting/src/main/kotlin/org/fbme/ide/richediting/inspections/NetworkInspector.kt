package org.fbme.ide.richediting.inspections

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.PortPath
import java.awt.Color

interface NetworkInspector : Inspector {
    fun setInspectionForPort(port: PortPath<*>, inspection: Inspection?)
    fun setInspectionForComponent(component: Declaration, inspection: Inspection?)
    fun setHighlightingForConnection(connection: FBNetworkConnection, color: Color?)
    fun clear()
}
