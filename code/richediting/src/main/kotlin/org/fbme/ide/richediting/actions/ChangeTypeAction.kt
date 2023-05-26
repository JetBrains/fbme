package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.fbnetwork.actions.ChangeTypeAction
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class ChangeTypeAction : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) {
        val project = event.getData(MPSEditorDataKeys.MPS_PROJECT)
        val cell = event.getData(MPSEditorDataKeys.EDITOR_CELL)

        if (project == null || cell == null) {
            notApplicable(event)
            return
        }

        val editedFBS = cell.style.get(RichEditorStyleAttributes.EDITED_FBS).editedComponents
        val fbCell = editedFBS.find { it.associatedNode == cell.sNode }

        if (fbCell == null) {
            notApplicable(event)
            return
        }

        when (val declaration = fbCell.type.declaration) {
            is CompositeFBTypeDeclaration -> {
                event.presentation.text = TO_BASIC_FB_TYPE
                event.presentation.isEnabled = checkCompositeBlock(declaration)
            }

            is BasicFBTypeDeclaration -> {
                event.presentation.text = TO_COMPOSITE_FB_TYPE
                event.presentation.isEnabled = checkBasicBlock(declaration)
            }

            else -> {
                notApplicable(event)
            }
        }
    }

    private fun checkBasicBlock(declaration: BasicFBTypeDeclaration): Boolean {
        if (declaration.ecc.states.isNotEmpty()) {
            return false
        }

        if (declaration.ecc.transitions.isNotEmpty()) {
            return false
        }

        return declaration.algorithms.isEmpty()
    }

    private fun checkCompositeBlock(declaration: CompositeFBTypeDeclaration): Boolean {
        return declaration.network.allComponents.isEmpty()
    }

    private fun notApplicable(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.modelAccess.executeCommandInEDT {
            ChangeTypeAction(
                    event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL),
                    event.getRequiredData(MPSEditorDataKeys.MPS_PROJECT)
            ).apply()
        }
    }

    companion object {
        const val TO_BASIC_FB_TYPE = "Change type to basic"
        const val TO_COMPOSITE_FB_TYPE = "Change type to composite"
    }
}