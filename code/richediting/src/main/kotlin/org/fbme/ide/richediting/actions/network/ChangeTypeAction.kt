package org.fbme.ide.richediting.actions.network

import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.actions.modelAccess
import org.fbme.ide.richediting.adapters.fbnetwork.actions.ChangeTypeAction
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class ChangeTypeAction : AbstractFBEditAction() {
    override fun internalConditionCheck(
            event: AnActionEvent,
            fbCell: FunctionBlockView,
            cell: EditorCell,
            project: MPSProject
    ) {
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
        if (declaration.ecc.states.size > 1) {
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
