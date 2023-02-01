package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.cell.AlgorithmCell
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration

class ChangeAlgorithmAction(private val algorithm: AlgorithmDeclaration?) :
    AnAction(algorithm?.name ?: "None"),
    DumbAware {

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val editorCell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            val action = editorCell.style.get(RichEditorStyleAttributes.STATE_ACTION)
            if (algorithm != null) {
                action.algorithm.setTarget(algorithm)
            } else {
                action.algorithm.setTargetName("")
            }
        }
    }
}
