package org.fbme.debugger.plugin

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import org.fbme.ide.richediting.actions.cell
import org.fbme.ide.richediting.actions.element
import org.fbme.ide.richediting.actions.executeReadAction
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class MonitoringAction_UnwatchFB : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
        val editorCell = event.cell ?: return
        val project = event.project ?: return
        event.executeReadAction {
            val element = event.element<ResourceDeclaration>() ?: return@executeReadAction
            val actions = NetworkWatchActions(element, editorCell, project)
            if (actions.hasWatchedFunctionBlock()) {
                event.presentation.isEnabledAndVisible = true
                event.presentation.text = "Stop Watching for Function block " + actions.functionBlock!!.name
            }
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val cell = event.cell!!
            val element = event.element<ResourceDeclaration>()!!
            val project = event.project!!
            NetworkWatchActions(element, cell, project).unwatchFunctionBlock()
        }
    }
}
