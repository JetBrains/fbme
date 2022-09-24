package org.fbme.ide.iec61499.repository

import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.model.SNode

open class PlatformElementsOwner {
    private val myElements: MutableMap<SNode, Element?> = HashMap()
    private val myAdapter: PlatformElementAdapter = MpsBridge.createElementAdapter(this)
    fun <T> getAdapter(node: SNode?, requiredClass: Class<T>): T? {
        if (node == null) {
            return null
        }
        val adapter: Any? = myElements.computeIfAbsent(node) { node: SNode -> adapt(node) }
        if (adapter == null) {
            myElements.remove(node)
        }
        return if (requiredClass.isInstance(adapter)) {
            adapter as T?
        } else null
    }

    private fun adapt(node: SNode): Element? {
        return myAdapter.adapt(node)
    }

    fun dispose() {
        myElements.clear()
    }

    val iec61499Factory: IEC61499Factory
        get() = MpsBridge.createIec61499Factory(this)
    val stFactory: STFactory
        get() = MpsBridge.createStFactory(this)
}
