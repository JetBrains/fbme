package org.fbme.ide.richediting.actions.network

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.utils.Notifier

class CreateViewAction : AnAction(), DumbAware {
    override fun update(e: AnActionEvent) {

    }

    override fun actionPerformed(event: AnActionEvent) {
        Notifier.showWarning("Boo", event.getRequiredData(MPSEditorDataKeys.MPS_PROJECT).project)
    }
}