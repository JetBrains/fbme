package org.fbme.debugger.plugin

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import org.fbme.ide.richediting.actions.cell
import org.fbme.ide.richediting.actions.element
import org.fbme.ide.richediting.actions.executeReadAction
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.InspectionManagerImpl.Companion.getInstance
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class MonitoringAction_DisableWatching : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
        val editorCell = event.cell ?: return
        val project = event.project ?: return
        event.executeReadAction {
            val element = event.element<ResourceDeclaration>() ?: return@executeReadAction
            event.presentation.isEnabledAndVisible = NetworkWatchActions(element, editorCell, project).inspector != null
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val cell = event.cell!!
            val network = cell.style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
            getInstance(cell.editorComponent)?.disposeInspector(network)
        }
    }
}
