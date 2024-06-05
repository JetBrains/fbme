package org.fbme.spinDebugger.execution

import com.intellij.openapi.fileChooser.FileChooser
import com.intellij.openapi.fileChooser.FileChooserDescriptor
import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.panel.DebugPanelService
import org.fbme.spinDebugger.counterexample.SPINCounterExampleParser
import org.fbme.spinDebugger.fb2spin.FB2SPIN
import org.fbme.spinDebugger.integration.ServiceSPINPathProvider
import org.fbme.spinDebugger.integration.VerificationService
import java.nio.file.Path
import javax.swing.JComponent
import javax.swing.JOptionPane
import javax.swing.JPanel

/**
 * SPINDebugger is a class that provides functionality for debugging SPIN programs.
 * It uses several services and parsers to perform its tasks.
 *
 * @property debugPanelService service for managing the debug panel.
 * @property ideaProject the IntelliJ IDEA project.
 * @property unifiedParser parser for SPIN counterexamples.
 * @property fB2SPIN converter for Function Block to SPIN.
 * @property mpsProject the MPS project.
 * @constructor Initializes the debugger with the given project.
 * @param mpsProject the MPS project.
 */
class SPINDebugger(private val mpsProject: MPSProject) {
    //private val spinService: VerificationService
    //spinService = VerificationService(ServiceSPINPathProvider.create(project))
    private val debugPanelService: DebugPanelService = DebugPanelService(mpsProject)
    private val ideaProject: Project = mpsProject.project
    private val unifiedParser: SPINCounterExampleParser = SPINCounterExampleParser(mpsProject)
    private val fB2SPIN: FB2SPIN = FB2SPIN()

    fun run(
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        exported: Boolean
    ): JComponent? {
        return try {
            if (exported) {
                showExportedConterexample(compositeFb)
            } else {
                fB2SPIN.convertFB(fbPath, compositeFb, mpsProject)
                verify(fbPath, compositeFb)
                null
            }
        } catch (e: Exception) {
            JOptionPane.showMessageDialog(null, e.message)
            null
        }
    }

    private fun showExportedConterexample(compositeFb: CompositeFBTypeDeclaration): JComponent? {
        val descriptor = FileChooserDescriptor(true, false, false, false, false, false)
        val file = FileChooser.chooseFile(descriptor, ideaProject, null) ?: return null
        val counterexample = unifiedParser.getUnifiedTrace("", file.toNioPath(), compositeFb)
        return null
        //return debugPanelService.run(compositeFb, Counterexample(counterexample))
    }

    private fun verify(fbPath: Path, compositeFb: CompositeFBTypeDeclaration): JPanel? {
        val specification = specification

        //val counterexample = spinService.verify(fbPath, specification)
        //if (counterexample == null) {
        //    notifySuccess()
        //    return null
        //}


        //val trace = unifiedParser.getUnifiedTrace("", counterexample,  compositeFb)
        return null
        //return debugPanelService.run(compositeFb, counterexample.get())
    }

    companion object {
        private val specification: String
            get() = JOptionPane.showInputDialog(null, "Enter LTL specification")

        private fun notifySuccess() {
            JOptionPane.showMessageDialog(null, "Success")
        }
    }
}