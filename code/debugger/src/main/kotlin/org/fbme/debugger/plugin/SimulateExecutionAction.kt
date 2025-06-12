package org.fbme.debugger.plugin

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.wm.ToolWindowManager
import com.intellij.ui.content.ContentFactory
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.debugger.simulator.BasicFBSimulator
import org.fbme.debugger.simulator.CompositeFBSimulator
import org.fbme.debugger.simulator.ResourceSimulator
import org.fbme.debugger.simulator.ui.SimulatorPanel
import org.fbme.ide.iec61499.snashot.DeclarationSnapshot
import org.fbme.ide.richediting.actions.cell
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.InspectionManager
import org.fbme.ide.richediting.inspections.InspectionManagerImpl
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.instances.NetworkInstance

class SimulateExecutionAction : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible = false
        val cell = event.cell ?: return
        if (cell.style.get(RichEditorStyleAttributes.FB) != null) {
            event.presentation.isEnabledAndVisible = true
            return
        }
        val fbNetwork = cell.style.get(RichEditorStyleAttributes.NETWORK)
        if (fbNetwork?.container is FBTypeDeclaration || fbNetwork?.container is ResourceDeclaration) {
            event.presentation.isEnabledAndVisible = true
            return
        }
        val ecc = cell.style.get(RichEditorStyleAttributes.ECC)
        if (ecc?.container != null) {
            event.presentation.isEnabledAndVisible = true
        }
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val project = event.project!!
            val mpsProject = project.getComponent(MPSProject::class.java)
            val toolWindowManager = ToolWindowManager.getInstance(project)
            val toolWindow = toolWindowManager.getToolWindow(DebuggerToolWindow.ID)!!
            val cell = event.cell!!
            val style = cell.style

            val typeDeclaration = style.get(RichEditorStyleAttributes.FB)?.type?.declaration
                ?: style.get(RichEditorStyleAttributes.NETWORK)?.container
                    ?.let { it as? FBTypeDeclaration ?: it as? ResourceDeclaration }
                ?: style.get(RichEditorStyleAttributes.ECC)?.container!!

            val snapshot: DeclarationSnapshot = DeclarationSnapshot.create(typeDeclaration)
            val snapshotDeclaration: Declaration = snapshot.snapshotDeclaration
            val typeName = snapshotDeclaration.name

            val simulator = when (snapshotDeclaration) {
                is BasicFBTypeDeclaration -> BasicFBSimulator(snapshotDeclaration)
                is CompositeFBTypeDeclaration -> CompositeFBSimulator(snapshotDeclaration)
                is ResourceDeclaration -> ResourceSimulator(snapshotDeclaration)
                else -> error("Unsupported declaration: $snapshotDeclaration")
            }

            val trace: ExecutionTrace = simulator.trace
            val explanationProducer = ExplanationProducer(trace, snapshotDeclaration)

            val inspector = (snapshotDeclaration as? DeclarationWithNetwork)?.let {
                val manager: InspectionManager = InspectionManagerImpl.getInstance(cell.editorComponent)!!
                val networkInstance: NetworkInstance = cell.style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
                if (networkInstance.networkDeclaration.container == typeDeclaration) {
                    manager.installInspector(networkInstance) { }!!
                } else null
            }

            val simulatorPanel = SimulatorPanel(
                project,
                mpsProject,
                trace,
                snapshotDeclaration,
                typeDeclaration,
                simulator,
                explanationProducer,
                inspector
            )
            val simulatorPanelComponent = simulatorPanel.toolWindowPanel

            val content = ContentFactory.SERVICE.getInstance().createContent(simulatorPanelComponent, typeName, false)
            content.isPinnable = true
            content.isPinned = true

            toolWindow.contentManager.addContent(content)
            toolWindow.contentManager.setSelectedContent(content, true)
            toolWindow.show()
        }
    }
}
