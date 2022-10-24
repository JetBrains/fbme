package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind

class AddConstantToPortAction : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
        val style = event.getData(MPSEditorDataKeys.EDITOR_CELL)?.style ?: return
        style.get(RichEditorStyleAttributes.NETWORK) ?: return
        style.get(RichEditorStyleAttributes.FB) ?: return
        val portDecl = style.get(RichEditorStyleAttributes.PORT) ?: return

        event.presentation.isEnabledAndVisible = portDecl.isInput && portDecl.connectionKind === EntryKind.DATA
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val style = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL).style
            val fb = style.get(RichEditorStyleAttributes.FB)
            val port = style.get(RichEditorStyleAttributes.PORT)
            val parameter = event.repository.iec61499Factory.createParameterAssignment()
            parameter.parameterReference.setTarget(port.declaration as ParameterDeclaration)
            event.getRequiredData(MPSEditorDataKeys.EDITOR_CONTEXT).selectionManager.setSelection((parameter as PlatformElement).node)
            fb.parameters.add(parameter)
        }
    }
}
