package org.fbme.spinDebugger

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.wm.ToolWindowManager
import com.intellij.ui.content.ContentFactory
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.debugger.plugin.DebuggerToolWindow
import org.fbme.debugger.simulator.BasicFBSimulator
import org.fbme.debugger.simulator.CompositeFBSimulator
import org.fbme.debugger.simulator.ResourceSimulator
import org.fbme.debugger.simulator.ui.SimulatorPanel
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.snashot.DeclarationSnapshot
import org.fbme.ide.platform.persistence.Iec61499Persistence
import org.fbme.ide.richediting.actions.cell
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.InspectionManager
import org.fbme.ide.richediting.inspections.InspectionManagerImpl
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.smvDebugger.executionTraceUnification.UnifiedTraceConverter
import org.fbme.spinDebugger.execution.SPINTraceFactory

class SPINAction : AnAction() {
    private val spinTraceFactory = SPINTraceFactory()

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val project = event.project!!
            val mpsProject = project.getComponent(MPSProject::class.java)
            val toolWindowManager = ToolWindowManager.getInstance(project)
            val toolWindow = toolWindowManager.getToolWindow(DebuggerToolWindow.ID)!!
            val cell = event.cell!!
            val style = cell.style
            val arg = ArrayList<String>()

            val fbTypeDeclaration = style.get(RichEditorStyleAttributes.FB)?.type?.declaration
                        ?: style.get(RichEditorStyleAttributes.NETWORK)?.container
                            ?.let { it as? FBTypeDeclaration ?: it as? ResourceDeclaration }
                        ?: style.get(RichEditorStyleAttributes.ECC)?.container
                        ?: style.get(RichEditorStyleAttributes.TYPE)?.declaration!!

            /*
            val snapshot: DeclarationSnapshot = DeclarationSnapshot.create(fbTypeDeclaration)
            val snapshotDeclaration: Declaration = snapshot.snapshotDeclaration
            val typeName = snapshotDeclaration.name

            val simulator = when (snapshotDeclaration) {
                is BasicFBTypeDeclaration -> BasicFBSimulator(snapshotDeclaration)
                is CompositeFBTypeDeclaration -> CompositeFBSimulator(snapshotDeclaration)
                is ResourceDeclaration -> ResourceSimulator(snapshotDeclaration)
                else -> error("Unsupported declaration: $snapshotDeclaration")
            }

            val inspector = (snapshotDeclaration as? DeclarationWithNetwork)?.let {
                val manager: InspectionManager = InspectionManagerImpl.getInstance(cell.editorComponent)!!
                val networkInstance: NetworkInstance = cell.style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
                manager.installInspector(networkInstance) { }!!
            }*/

            val fbPath = java.nio.file.Path.of(Iec61499Persistence.getPathToElement((fbTypeDeclaration as PlatformElement).node))
            val rez = spinTraceFactory.generateTrace(
                mpsProject, fbPath,
                fbTypeDeclaration as CompositeFBTypeDeclaration, arg
            )

            /*var traceForGUI = UnifiedTraceConverter.convertTrace(rez.get(), fbTypeDeclaration, mpsProject)

            val explanationProducer = ExplanationProducer(traceForGUI, snapshotDeclaration)
            val simulatorPanel = SimulatorPanel(
                project,
                mpsProject,
                traceForGUI,
                snapshotDeclaration,
                fbTypeDeclaration,
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
            toolWindow.show()*/
        }

        println("SPINAction executed!")
    }
}