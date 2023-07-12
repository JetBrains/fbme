package org.fbme.debugger.plugin

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import org.fbme.ide.richediting.actions.cell
import org.fbme.ide.richediting.actions.element
import org.fbme.ide.richediting.actions.executeReadAction
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.InspectionManagerImpl
import org.fbme.lib.iec61499.declarations.ResourceDeclaration


class MonitoringAction_EnableWatching : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
        val editorCell = event.cell ?: return
        val project = event.project ?: return
        event.executeReadAction {
            val element = event.element<ResourceDeclaration>() ?: return@executeReadAction
            val actions = NetworkWatchActions(element, editorCell, project)
            event.presentation.isEnabledAndVisible = actions.inspector != null && actions.networkInstance != null
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val cell = event.cell!!
            val project = event.project!!
            val element = event.element<ResourceDeclaration>()!!
            val network = cell.style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
            val actions = NetworkWatchActions(element, cell, project)
            InspectionManagerImpl.getInstance(cell.editorComponent)
                ?.installInspector(network) { actions.inspector = null }
        }
    }
}
