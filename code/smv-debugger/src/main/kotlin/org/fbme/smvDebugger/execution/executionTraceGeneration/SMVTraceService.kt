package org.fbme.smvDebugger.execution.executionTraceGeneration

import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.fb2smv.FB2SMV
import org.fbme.smvDebugger.integration.ServicePathProvider
import org.fbme.smvDebugger.integration.SmvService
import java.io.File
import java.nio.file.Path
import java.util.concurrent.CompletableFuture
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future
import javax.swing.JOptionPane
import kotlin.io.path.pathString


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
            val specification = ""//specification
            val counterexample = smvService.verify(fbPath, specification)
            if (counterexample == null) {
                notifySuccess()
                return CompletableFuture.supplyAsync(null)
            }
            else{
              //  val tmpTrace =  File(fbPath.pathString.substring(0, fbPath.pathString.lastIndexOf(".")) + "_ref_TMP.nutrac").toPath()
                val trace= unifiedParser.getUnifiedTrace("", counterexample, compositeFb)
                val rez = CompletableFuture.supplyAsync{ trace }
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