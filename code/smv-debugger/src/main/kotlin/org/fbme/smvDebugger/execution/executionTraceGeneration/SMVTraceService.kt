package org.fbme.smvDebugger.execution.executionTraceGeneration

import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.fb2smv.FB2SMV
import org.fbme.smvDebugger.integration.ServicePathProvider
import org.fbme.smvDebugger.integration.SmvService
import java.nio.file.Path
import java.util.concurrent.CompletableFuture
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future
import javax.swing.JOptionPane


class SMVTraceService(val project: Project) {
    val smvService: SmvService
    val unifiedParser: SMVCountereExampleParser
    val fB2SMV: FB2SMV
    val mpsProject: MPSProject
    val executor: ExecutorService = Executors.newSingleThreadExecutor()

    fun generateTrace(
        project: MPSProject,
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        agr: ArrayList<String>): Future<ArrayList<SystemStateUpdate>> {
        //val future = CompletableFuture<ArrayList<SystemStateUpdate>>()


      //  executor.submit {

            fB2SMV.convertFB(fbPath, compositeFb, mpsProject)
            val specification = specification
            val counterexample = smvService.verify(fbPath, specification)
            if (counterexample == null) {
                notifySuccess()
                return CompletableFuture.supplyAsync(null)
            }
            else{
                val rez = CompletableFuture.supplyAsync{
                    unifiedParser.getUnifiedTrace("", counterexample, compositeFb) }
                return rez
            }
      //  }
       // return future
    }

    companion object {
        private val specification: String
            private get() = JOptionPane.showInputDialog(null, "Enter LTL/CTL specification")

        private fun notifySuccess() {
            JOptionPane.showMessageDialog(null, "Success")
        }
    }

    init {
        mpsProject = project.getComponent(MPSProject::class.java)
        smvService = SmvService(ServicePathProvider.create(mpsProject))
        fB2SMV = FB2SMV()
        unifiedParser = SMVCountereExampleParser(mpsProject)
    }
}