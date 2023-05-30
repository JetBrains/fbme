package org.fbme.ide.richediting.actions.network.expand

import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.actions.executeReadActionInEditor
import org.fbme.ide.richediting.actions.network.AbstractFBEditAction
import org.fbme.ide.richediting.adapters.fbnetwork.actions.expand.CollapseAction
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.viewmodel.FunctionBlockView

class CollapseAction : AbstractFBEditAction() {
    override fun internalConditionCheck(
            event: AnActionEvent,
            fbCell: FunctionBlockView,
            cell: EditorCell,
            project: MPSProject
    ) {
        event.presentation.isEnabled =
                cell.style.get(RichEditorStyleAttributes.EXPANDED_COMPONENTS_CONTROLLER)?.isExpanded(fbCell) ?: false
    }


    override fun actionPerformed(event: AnActionEvent) {
        event.executeReadActionInEditor {
            CollapseAction(
                    event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL),
                    event.getRequiredData(MPSEditorDataKeys.MPS_PROJECT)
            ).apply()
        }
    }
}
