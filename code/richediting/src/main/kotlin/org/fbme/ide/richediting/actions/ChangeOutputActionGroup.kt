package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.ActionGroup
import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class ChangeOutputActionGroup : ActionGroup(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = event.element<BasicFBTypeDeclaration>() != null
    }

    override fun getChildren(event: AnActionEvent?): Array<AnAction> {
        if (event == null) return emptyArray()

        val fbTypeDeclaration = event.element<BasicFBTypeDeclaration>() ?: return emptyArray()
        val actions = fbTypeDeclaration.outputEvents.map { ChangeOutputAction(it) } + ChangeOutputAction(null)
        return actions.toTypedArray()
    }
}
