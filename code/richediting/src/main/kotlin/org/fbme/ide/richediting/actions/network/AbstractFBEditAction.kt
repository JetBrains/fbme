package org.fbme.ide.richediting.actions.network

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.viewmodel.FunctionBlockView

abstract class AbstractFBEditAction: AnAction(), DumbAware {
    override fun update(event: AnActionEvent) {
        val project = event.getData(MPSEditorDataKeys.MPS_PROJECT)
        val cell = event.getData(MPSEditorDataKeys.EDITOR_CELL)

        if (project == null || cell == null) {
            notApplicable(event)
            return
        }

        val editedFBS = cell.style.get(RichEditorStyleAttributes.EDITED_FBS)?.editedComponents
        val fbCell = editedFBS?.find { it.associatedNode == cell.sNode }

        if (fbCell == null) {
            notApplicable(event)
            return
        }

        internalConditionCheck(event, fbCell, cell, project)
    }

    protected abstract fun internalConditionCheck(
            event: AnActionEvent,
            fbCell: FunctionBlockView,
            cell: EditorCell,
            project: MPSProject
    )

    protected fun notApplicable(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
    }
}
