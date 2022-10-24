package org.fbme.ide.richediting.inspections

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.scenes.controllers.scene.SceneStateKey
import java.awt.Color

class NetworkInspectionsData {
    /*package*/
    @JvmField
    val portInspections = HashMap<PortPath<out Declaration>, Inspection>()

    /*package*/
    @JvmField
    val componentInspections = HashMap<Declaration, Inspection>()

    /*package*/
    @JvmField
    val highlightedConnections = HashMap<FBNetworkConnection, Color?>()

    companion object {
        @JvmField
        val KEY = SceneStateKey<NetworkInspectionsData>("network-inspections")
    }
}
