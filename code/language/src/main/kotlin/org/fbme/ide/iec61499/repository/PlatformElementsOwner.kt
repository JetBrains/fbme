package org.fbme.ide.iec61499.repository

import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.model.SNode

open class PlatformElementsOwner constructor() {
    private val elements: MutableMap<SNode, Element?> = HashMap()
    private val adapter: PlatformElementAdapter = MpsBridge.createElementAdapter(this)
    fun <T> getAdapter(node: SNode?, requiredClass: Class<T>): T? {
        if (node == null) {
            return null
        }
        val adapter: Any? = elements.computeIfAbsent(node) { adapt(it) }
        if (adapter == null) {
            elements.remove(node)
        }
        if (requiredClass.isInstance(adapter)) {
            return requiredClass.cast(adapter)
        }
        return null
    }

    private fun adapt(node: SNode): Element? {
        return adapter.adapt(node)
    }

    fun dispose() {
        elements.clear()
    }

    val iec61499Factory: IEC61499Factory
        get() = MpsBridge.createIec61499Factory(this)
    val stFactory: STFactory
        get() = MpsBridge.createStFactory(this)
}
