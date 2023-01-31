package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.fbnetwork.actions.ExpandAction

class ExpandAction : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = event.getData(MPSEditorDataKeys.EDITOR_CELL) != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeReadActionInEditor {
            ExpandAction(event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)).apply()
        }
    }
}
