package org.fbme.smvDebugger.executionTraceGeneration

import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.executionTraceFactory.TraceFactory
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.execution.SmvDebugger
import org.fbme.smvDebugger.fb2smv.FB2SMV
import org.fbme.smvDebugger.integration.ServicePathProvider
import org.fbme.smvDebugger.integration.SmvService
import org.fbme.smvDebugger.model.CounterexampleParser
import org.fbme.smvDebugger.panel.DebugPanelService
import java.nio.file.Path
import java.util.concurrent.CompletableFuture
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future
import javax.swing.JOptionPane

class SMVTraceFactory(project: MPSProject): TraceFactory {
    private val smvService: SmvService
    private val debugPanelService: DebugPanelService
    private val ideaProject: Project
    private val counterexampleParser = CounterexampleParser
    private val unifiedParser: SMVCountereExampleParser
    private val fB2SMV: FB2SMV
    private val mpsProject: MPSProject

    override fun generateTrace(
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        agr: ArrayList<String>
    ): Future<ArrayList<SystemStateUpdate>> {
        val future = CompletableFuture<ArrayList<SystemStateUpdate>>()
        val executor: ExecutorService = Executors.newSingleThreadExecutor()
        executor.submit {

            fB2SMV.convertFB(fbPath, compositeFb, mpsProject)
            val specification = specification
            val counterexample = smvService.verify(fbPath, specification)
            if (counterexample == null) {
                notifySuccess()
                future.complete(null)
            }
            else{
                future.complete(unifiedParser.getUnifiedTrace("", counterexample, compositeFb))
            }
        }
        return future
    }

    companion object {
        private val specification: String
            private get() = JOptionPane.showInputDialog(null, "Enter LTL/CTL specification")

        private fun notifySuccess() {
            JOptionPane.showMessageDialog(null, "Success")
        }
    }

    init {
        smvService = SmvService(ServicePathProvider.create(project))
        debugPanelService = DebugPanelService(project)
        ideaProject = project.project
        mpsProject = project
        fB2SMV = FB2SMV()
        unifiedParser = SMVCountereExampleParser(project)
    }

}