package org.fbme.ide.richediting.actions.network

import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.actions.modelAccess
import org.fbme.ide.richediting.adapters.fbnetwork.actions.CreateViewAction
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CreateViewAction : AbstractFBEditAction() {
    override fun internalConditionCheck(
            event: AnActionEvent,
            fbCell: FunctionBlockView,
            cell: EditorCell,
            project: MPSProject
    ) {
        event.presentation.isEnabled = fbCell.type.declaration !is CompositeFBTypeDeclaration
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.modelAccess.executeCommandInEDT {
            CreateViewAction(
                    event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL),
                    event.getRequiredData(MPSEditorDataKeys.MPS_PROJECT)
            ).apply()
        }
    }
}
