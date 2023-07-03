package org.fbme.smvDebugger

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.CommonDataKeys
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.platform.persistence.Iec61499Persistence
import org.fbme.ide.richediting.actions.element
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.smvDebugger.execution.executionTraceGeneration.SMVTraceFactory
import org.fbme.smvDebugger.executionTraceUnification.UnifiedTraceConverter
import org.jetbrains.mps.openapi.model.SNode
import java.nio.file.Path
import javax.swing.JComponent
import javax.swing.JOptionPane


class SMVUnifiedExecutionTraceAction:  AnAction() {

//    private object CONCEPTS {
//        /*package*/
//        val `CompositeFBTypeDeclaration` = MetaAdapterFactory.getConcept(
//            0x6594f3404d734027L,
//            -0x482c3935d18f5ac5L,
//            0xd6e959f7e7902ddL,
//            "org.fbme.ide.iec61499.lang.structure.CompositeFBTypeDeclaration"
//        )
//    }

    var smvTraceFactory = SMVTraceFactory()


    override fun actionPerformed(event: AnActionEvent) {

        val mpsProject = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)
        val fbTypeDeclaration = event.element<FBTypeDeclaration>()

        if (null != fbTypeDeclaration){
//            val fbPath = Path.of(Iec61499Persistence.getPathToElement((fbTypeDeclaration as PlatformElement).node))
            val fbPath = Path.of("C:\\Users\\tatlia\\Documents\\GitHub\\fbme\\samples\\smv-debugger\\solutions\\" +
                    "org.fbme.smvDebugger.sandbox\\models\\TC\\TwoCylDiscr.fbt")

            val arg = ArrayList<String>()
            val rez = smvTraceFactory.generateTrace(mpsProject, fbPath,
                fbTypeDeclaration as CompositeFBTypeDeclaration,arg).get()

        //    JOptionPane.showMessageDialog(  null, "SMVUnifiedExecutionTraceAction")

            mpsProject.modelAccess.runReadAction {

                val traceForGUI = UnifiedTraceConverter.convertTrace(rez, fbTypeDeclaration)
            }
//            val debuggerTool: Debugger_Tool =
//                event.getData(CommonDataKeys.PROJECT)!!.getComponent(ProjectPluginManager::class.java).getTool(
//                    Debugger_Tool::class.java
//                )
//
//            val node: SNode =
//                SNodeOperations.cast(event.getData(MPSCommonDataKeys.NODE), CONCEPTS.`ResourceDeclaration$kp`)
//
//            val repository: PlatformRepository =
//                PlatformRepositoryProvider.getInstance(event.getData(MPSCommonDataKeys.MPS_PROJECT))
//
//            val resourceDeclaration: ResourceDeclaration = repository.getAdapter(node, ResourceDeclaration::class.java)
//
//            val debuggerPanel = DebuggerPanel(
//                event.getData(CommonDataKeys.PROJECT),
//                event.getData(MPSCommonDataKeys.MPS_PROJECT),
//                traceForGUI,
//                resourceTypeDeclarationSnaphot,
//                resourceDeclaration,
//                explanationProducer,
//                inspector
//            )
//
//            debuggerTool.addPanel(resourceDeclaration, debuggerPanel)
//
//            debuggerPanelComponent = debuggerPanel.getToolWindowPanel()
//
//            assert(debuggerPanelComponent != null)
//
//            debuggerTool.openTool(true)
//            debuggerTool.addTab(debuggerPanelComponent, typeName, null, null, true)
//            debuggerTool.pinTab(debuggerPanelComponent)
//            debuggerTool.setSelectedComponent(debuggerPanelComponent)
//


        }








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