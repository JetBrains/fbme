package org.fbme.ide.richediting.plugin

import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.instances.NetworkInstance

object NetworkObservationKeys {
    fun inspector(instance: NetworkInstance): Any {
        return InspectorKey(instance)
    }

    fun portListener(instance: NetworkInstance, port: PortPath<*>): Any {
        return PortListenerKey(instance, port)
    }

    fun eccStateListener(instance: NetworkInstance, fb: FunctionBlockDeclarationBase): Any {
        return ECCStateListenerKey(instance, fb)
    }

    private data class InspectorKey(val instance: NetworkInstance)

    private data class PortListenerKey(private val instance: NetworkInstance, private val port: PortPath<*>)

    private data class ECCStateListenerKey(val instance: NetworkInstance, val fb: FunctionBlockDeclarationBase)
}
