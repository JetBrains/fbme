package org.fbme.spinDebugger.execution

import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.spinDebugger.counterexample.SPINCounterExampleParser
import org.fbme.spinDebugger.fb2spin.FB2SPIN
import java.nio.file.Path
import java.util.concurrent.CompletableFuture
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future
import javax.swing.JOptionPane

class SPINTraceService(val project: Project) {
    //val verificationService: VerificationService
    val unifiedParser: SPINCounterExampleParser
    val fB2SPIN: FB2SPIN
    val mpsProject: MPSProject
    val executor: ExecutorService = Executors.newSingleThreadExecutor()

    fun generateTrace(
        project: MPSProject,
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        agr: ArrayList<String>): Future<ArrayList<SystemStateUpdate>> {
            fB2SPIN.convertFB(fbPath, compositeFb, mpsProject)
            val counterexample: Path? = null

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
    }

    companion object {
        private val specification: String
            private get() = JOptionPane.showInputDialog(null, "Enter LTL specification")

        private fun notifySuccess() {
            JOptionPane.showMessageDialog(null, "Success")
        }
    }

    init {
        mpsProject = project.getComponent(MPSProject::class.java)
        fB2SPIN = FB2SPIN()
        //verificationService = VerificationService(ServiceSPINPathProvider.create(mpsProject))
        unifiedParser = SPINCounterExampleParser(mpsProject)
    }

}