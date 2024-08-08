package org.fbme.ide.platform

import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Element

val AnActionEvent.repository get() = PlatformRepositoryProvider.getInstance(getRequiredData(MPSCommonDataKeys.MPS_PROJECT))
val AnActionEvent.mpsProject get() = getData(MPSCommonDataKeys.MPS_PROJECT)
//val AnActionEvent.model get() = getData(MPSCommonDataKeys.MODEL)

inline fun <reified T : Element> AnActionEvent.element(): T? {
    var node = getData(MPSCommonDataKeys.NODE)
    while (node != null) {
        val adapter = repository.getAdapter(node, Element::class.java)
        if (adapter is T) return adapter
        node = node.parent
    }
    return null
}

inline fun <reified T : Element> AnActionEvent.elementt(): org.jetbrains.mps.openapi.model.SNode? {
    var node = getData(MPSCommonDataKeys.NODE)
    return node
}