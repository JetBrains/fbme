package org.fbme.debugger.plugin

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.components.service
import com.intellij.openapi.progress.ProgressIndicator
import com.intellij.openapi.progress.Task
import com.intellij.openapi.project.DumbAware
import org.fbme.debugger.RuntimeTraceSynchronizer
import org.fbme.ide.platform.debugger.DevicesFacade
import org.fbme.ide.richediting.actions.element
import org.fbme.ide.richediting.actions.executeReadAction
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import java.io.IOException


class DeploymentAction_StopResource : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.executeReadAction {
            event.presentation.isEnabledAndVisible = event.element<ResourceDeclaration>() != null
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val facade = service<DevicesFacade>()
            val project = event.project!!
            val resourceDeclaration = event.element<ResourceDeclaration>()!!
            val deviceDeclaration = resourceDeclaration.container as DeviceDeclaration

            object : Task.Backgroundable(project, "Stopping Resource") {
                override fun run(indicator: ProgressIndicator) {
                    event.executeReadAction {
                        try {
                            val connection = facade.attach(deviceDeclaration)
                            connection.killResource(resourceDeclaration)
                            connection.deleteResource(resourceDeclaration)
                        } catch (e: IOException) {
                            facade.invalidate(deviceDeclaration)
                            throw e
                        }
                    }
                }
            }.queue()

            val traceSynchronizer = RuntimeTraceSynchronizer.getInstance(resourceDeclaration)!!
            traceSynchronizer.endMonitoring()
            RuntimeTraceSynchronizer.removeTraceSynchronizer(resourceDeclaration)

            val debuggerTool = project.service<DebuggerToolWindow>()
            val panel = debuggerTool.getPanel(resourceDeclaration)
            panel!!.initUI()
        }
    }
}
