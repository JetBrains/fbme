package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes

class AddStateActionAction : AnAction(), DumbAware {

    override fun update(e: AnActionEvent) {
        e.presentation.isEnabledAndVisible =
            e.getData(MPSEditorDataKeys.EDITOR_CELL)?.style?.get(RichEditorStyleAttributes.STATE_DECLARATION) != null
    }

    override fun actionPerformed(e: AnActionEvent) {
        e.executeWriteActionInEditor {
            val cell = e.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            val state = cell.style.get(RichEditorStyleAttributes.STATE_DECLARATION)!!
            val factory = PlatformRepositoryProvider.getInstance(cell.context.repository).iec61499Factory
            val newAction = factory.createStateAction()
            state.actions.add(newAction)
        }
    }
}
