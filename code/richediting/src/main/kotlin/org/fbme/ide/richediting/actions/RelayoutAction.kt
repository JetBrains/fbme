package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.actions.RelayoutECCAction
import org.fbme.ide.richediting.adapters.fbnetwork.actions.RelayoutFBNetworkAction
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork

class RelayoutAction : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = event.getData(MPSEditorDataKeys.EDITOR_CELL) != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val cell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            when {
                event.element<BasicFBTypeDeclaration>() != null -> RelayoutECCAction(cell).apply()
                event.element<DeclarationWithNetwork>() != null -> RelayoutFBNetworkAction(cell).apply()
            }
        }
    }
}
