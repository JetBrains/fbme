package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.ActionGroup
import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class ChangeAlgorithmActionGroup : ActionGroup(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false

        val cell = event.getData(MPSEditorDataKeys.EDITOR_CELL) ?: return
        cell.style.get(RichEditorStyleAttributes.STATE_ACTION) ?: return

        event.presentation.isEnabledAndVisible = true
    }

    override fun getChildren(event: AnActionEvent?): Array<AnAction> {
        if (event == null) return emptyArray()

        return event.executeReadAction<Array<AnAction>> {
            val fbTypeDeclaration = event.element<BasicFBTypeDeclaration>() ?: return@executeReadAction emptyArray()
            val actions = fbTypeDeclaration.algorithms.map { ChangeAlgorithmAction(it) } + ChangeAlgorithmAction(null)
            actions.toTypedArray()
        }
    }
}
