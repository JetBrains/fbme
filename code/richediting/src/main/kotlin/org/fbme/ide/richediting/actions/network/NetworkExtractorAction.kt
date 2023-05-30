package org.fbme.ide.richediting.actions.network

import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.actions.modelAccess
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.adapters.fbnetwork.actions.NetworkExtractorAction
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class NetworkExtractorAction : AbstractFBEditAction() {
    override fun internalConditionCheck(
            event: AnActionEvent,
            fbCell: FunctionBlockView,
            cell: EditorCell,
            project: MPSProject
    ) {
        when (val declaration = fbCell.type.declaration) {
            is CompositeFBTypeDeclaration -> {
                event.modelAccess.runReadAction {
                    event.presentation.isEnabled =
                            declaration.network.functionBlocks.isNotEmpty()
                                    && declaration.sockets.isEmpty()
                                    && declaration.plugs.isEmpty()
                }
            }

            else -> {
                notApplicable(event)
            }
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.modelAccess.executeCommandInEDT {
            NetworkExtractorAction(
                    event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL),
                    event.getRequiredData(MPSEditorDataKeys.MPS_PROJECT)
            ).apply()
        }
    }
}
