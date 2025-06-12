package org.fbme.debugger.plugin

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.components.service
import com.intellij.openapi.progress.ProgressIndicator
import com.intellij.openapi.progress.Task
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.wm.ToolWindowManager
import com.intellij.ui.content.ContentFactory
import org.fbme.ide.platform.debugger.DevicesFacade
import org.fbme.debugger.RuntimeTraceSynchronizer
import org.fbme.ide.platform.debugger.WatchedValueListener
import org.fbme.ide.platform.debugger.WatcherFacade
import org.fbme.debugger.common.state.ResourceState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.ide.iec61499.snashot.DeclarationSnapshot.Companion.create
import org.fbme.ide.richediting.actions.*
import org.fbme.ide.richediting.inspections.Inspection
import org.fbme.ide.richediting.inspections.InspectionManagerImpl
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import java.io.IOException


class DeploymentAction_DeployResource : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.executeReadAction {
            event.presentation.isEnabledAndVisible = event.element<ResourceDeclaration>() != null
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val cell = event.cell!!
            val resourceDeclaration = event.element<ResourceDeclaration>()!!
            val deviceDeclaration = resourceDeclaration.container as DeviceDeclaration
            val project = event.project!!
            val mpsProject = event.mpsProject!!
            val devicesFacade = service<DevicesFacade>()
            val watcherFacade = project.service<WatcherFacade>()
            val manager = InspectionManagerImpl.getInstance(cell.editorComponent)!!
            val networkInstance = NetworkInstance.createForResource(resourceDeclaration)
            val inspector = manager.installInspector(networkInstance) { }!!

            object : Task.Backgroundable(project, "Deploying resource") {
                override fun run(indicator: ProgressIndicator) {
                    mpsProject.modelAccess.runReadAction {
                        try {
                            val connection = devicesFacade.attach(deviceDeclaration)
                            connection.createNetwork(resourceDeclaration)
                            watcherFacade.watchResourceNetwork(resourceDeclaration)
                            watcherFacade.addWatchedValueListenersResourceNetwork(resourceDeclaration) { path ->
                                WatchedValueListener { newValue ->
                                    inspector.setInspectionForPort(path, Inspection(newValue))
                                }
                            }
                            connection.startResource(resourceDeclaration)
                        } catch (e: IOException) {
                            devicesFacade.invalidate(deviceDeclaration)
                            throw e
                        }
                    }
                }
            }.queue()

            val toolWindowManager = ToolWindowManager.getInstance(project)
            val toolWindow = toolWindowManager.getToolWindow(DebuggerToolWindow.ID)!!

            val snapshot = create(resourceDeclaration)
            val snapshotDeclaration = snapshot.snapshotDeclaration as ResourceDeclaration
            val typeName = snapshotDeclaration.name
            val resourceState = ResourceState(snapshotDeclaration)
            val executionTrace = ExecutionTrace(resourceState)
            val explanationProducer = ExplanationProducer(executionTrace, snapshotDeclaration)

            val traceSynchronizer =
                RuntimeTraceSynchronizer(event.getData(CommonDataKeys.PROJECT)!!, resourceDeclaration, executionTrace)
            RuntimeTraceSynchronizer.addTraceSynchronizer(resourceDeclaration, traceSynchronizer)
            traceSynchronizer.startMonitoring()

            val debuggerPanel = DebuggerPanel(
                project,
                mpsProject,
                executionTrace,
                snapshotDeclaration,
                resourceDeclaration,
                explanationProducer,
                inspector
            )
            DebuggerToolWindow.getInstance(project).addPanel(resourceDeclaration, debuggerPanel)

            val content =
                ContentFactory.SERVICE.getInstance().createContent(debuggerPanel.toolWindowPanel, typeName, false)
            content.isPinnable = true
            content.isPinned = true

            toolWindow.contentManager.addContent(content)
            toolWindow.contentManager.setSelectedContent(content, true)
            toolWindow.show()
        }
    }
}
