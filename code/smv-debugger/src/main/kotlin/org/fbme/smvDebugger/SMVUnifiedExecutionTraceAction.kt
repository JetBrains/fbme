package org.fbme.smvDebugger

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.components.service
import com.intellij.openapi.progress.ProgressIndicator
import com.intellij.openapi.progress.Task
import com.intellij.openapi.wm.ToolWindowManager
import com.intellij.ui.content.ContentFactory
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.RuntimeTraceSynchronizer
import org.fbme.debugger.common.state.ResourceState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.debugger.plugin.DebuggerToolWindow
import org.fbme.debugger.simulator.BasicFBSimulator
import org.fbme.debugger.simulator.CompositeFBSimulator
import org.fbme.debugger.simulator.ResourceSimulator
import org.fbme.debugger.simulator.ui.SimulatorPanel
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.snashot.DeclarationSnapshot
import org.fbme.ide.platform.debugger.DevicesFacade
import org.fbme.ide.platform.debugger.WatchedValueListener
import org.fbme.ide.platform.debugger.WatcherFacade
import org.fbme.ide.platform.persistence.Iec61499Persistence
import org.fbme.ide.richediting.actions.cell
import org.fbme.ide.richediting.actions.element
import org.fbme.ide.richediting.actions.executeWriteActionInEditor
import org.fbme.ide.richediting.actions.mpsProject
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.Inspection
import org.fbme.ide.richediting.inspections.InspectionManager
import org.fbme.ide.richediting.inspections.InspectionManagerImpl
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.smvDebugger.execution.executionTraceGeneration.SMVTraceFactory
import org.fbme.smvDebugger.executionTraceUnification.UnifiedTraceConverter
import org.jetbrains.mps.openapi.model.SNode
import java.io.IOException
import java.nio.file.Path
import javax.swing.JComponent
import javax.swing.JOptionPane


class SMVUnifiedExecutionTraceAction:  AnAction() {

    var smvTraceFactory = SMVTraceFactory()


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
                ?: style.get(RichEditorStyleAttributes.ECC)?.container!!

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
            }

            val fbPath = Path.of(Iec61499Persistence.getPathToElement((fbTypeDeclaration as PlatformElement).node))
            val rez = smvTraceFactory.generateTrace(
                mpsProject, fbPath,
                fbTypeDeclaration as CompositeFBTypeDeclaration, arg
            )

            var traceForGUI = UnifiedTraceConverter.convertTrace(rez.get(), fbTypeDeclaration, mpsProject)

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
            toolWindow.show()
        }

//
//
//        val mpsProject = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)
//        val fbTypeDeclaration = event.element<FBTypeDeclaration>()
//
//        if (null != fbTypeDeclaration){
////            val fbPath = Path.of(Iec61499Persistence.getPathToElement((fbTypeDeclaration as PlatformElement).node))
//            val fbPath = Path.of("C:\\Users\\tatlia\\Documents\\GitHub\\fbme\\samples\\smv-debugger\\solutions\\" +
//                    "org.fbme.smvDebugger.sandbox\\models\\TC\\TwoCylDiscr.fbt")
//
//            val rez = smvTraceFactory.generateTrace(mpsProject, fbPath,
//                fbTypeDeclaration as CompositeFBTypeDeclaration,arg).get()
//
//        //    JOptionPane.showMessageDialog(  null, "SMVUnifiedExecutionTraceAction")
//
//            mpsProject.modelAccess.runReadAction {
//
//                val traceForGUI = UnifiedTraceConverter.convertTrace(rez, fbTypeDeclaration)
//            }
//
//
//
//        }


//
//        val platformRepository = PlatformRepositoryProvider.getInstance(event.getData(MPSCommonDataKeys.MPS_PROJECT));
//
//        var fbTypeDecl = SNodeOperations.getNodeAncestor(event.getData(MPSCommonDataKeys.NODE),
//            CONCEPTS.CompositeFBTypeDeclaration, true, false)
//
//        val fbPath = Path.of(Iec61499Persistence.getPathToElement(fbTypeDecl));
//
//        val compositeFb = platformRepository.getAdapter(fbTypeDecl, CompositeFBTypeDeclaration::class.java)
//
//
//        event.getData(MPSCommonDataKeys.MPS_PROJECT)?.let { smvTraceFactory.generateTrace(it, fbPath, compositeFb,"")}
    }
}