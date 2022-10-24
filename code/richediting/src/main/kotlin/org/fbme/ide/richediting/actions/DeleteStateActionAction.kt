package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes

class DeleteStateActionAction : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
        val style = event.getData(MPSEditorDataKeys.EDITOR_CELL)?.style ?: return
        val stateAction = style.get(RichEditorStyleAttributes.STATE_ACTION)
        event.presentation.isEnabledAndVisible = stateAction != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val style = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL).style
            val stateAction = style.get(RichEditorStyleAttributes.STATE_ACTION)!!
            stateAction.remove()
        }
    }
}
