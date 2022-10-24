package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.editor.runtime.commands.EditorCommandAdapter
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Element

fun AnActionEvent.executeWriteActionInEditor(body: () -> Unit) {
    getRequiredData(MPSEditorDataKeys.MPS_PROJECT).modelAccess.runWriteAction {
        executeActionInEditor(body)
    }
}

fun AnActionEvent.executeReadActionInEditor(body: () -> Unit) {
    getRequiredData(MPSEditorDataKeys.MPS_PROJECT).modelAccess.runReadAction {
        executeActionInEditor(body)
    }
}

fun AnActionEvent.executeActionInEditor(body: () -> Unit) {
    val editorComponent = getRequiredData(MPSEditorDataKeys.EDITOR_COMPONENT)
    EditorCommandAdapter(body, editorComponent).run()
    editorComponent.updater.update()
}

val AnActionEvent.repository get() = PlatformRepositoryProvider.getInstance(getRequiredData(MPSCommonDataKeys.MPS_PROJECT))

inline fun <reified T: Element> AnActionEvent.element(): T? {
    var node = getData(MPSCommonDataKeys.NODE)
    while (node != null) {
        val adapter = repository.getAdapter(node, T::class.java)
        if (adapter != null) return adapter
        node = node.parent
    }
    return null
}
