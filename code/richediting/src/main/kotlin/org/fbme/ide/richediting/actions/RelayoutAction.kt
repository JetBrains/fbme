package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.actions.RelayoutECCAction
import org.fbme.ide.richediting.adapters.fbnetwork.actions.RelayoutFBNetworkAction
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.fbnetwork.FBNetwork

class RelayoutAction : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = event.getData(MPSEditorDataKeys.EDITOR_CELL) != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeReadActionInEditor {
            val cell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            when {
                event.element<ECC>() != null -> RelayoutECCAction(cell).apply()
                event.element<FBNetwork>() != null -> RelayoutFBNetworkAction(cell).apply()
            }
        }
    }
}
