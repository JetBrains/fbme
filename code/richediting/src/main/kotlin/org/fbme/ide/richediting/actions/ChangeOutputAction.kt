package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.cell.AlgorithmCell
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath.Companion.createEventPortPath

class ChangeOutputAction(private val eventDeclaration: EventDeclaration?) :
    AnAction(eventDeclaration?.name ?: "None"),
    DumbAware {

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val editorCell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            val action = editorCell.style.get(RichEditorStyleAttributes.STATE_ACTION)
            if (eventDeclaration != null) {
                action.event.setTarget(createEventPortPath(null, eventDeclaration))
            } else {
                action.event.setTargetNames(emptyList())
            }
        }
    }
}
