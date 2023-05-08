package org.fbme.smvDebugger.execution

import com.intellij.openapi.fileChooser.FileChooser
import com.intellij.openapi.fileChooser.FileChooserDescriptor
import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.executionTraceGeneration.SMVCountereExampleParser
import org.fbme.smvDebugger.fb2smv.FB2SMV
import org.fbme.smvDebugger.fb2smv.SMVFunctionBlockConverter
import org.fbme.smvDebugger.integration.ServicePathProvider
import org.fbme.smvDebugger.integration.SmvService
import org.fbme.smvDebugger.model.CounterexampleParser
import org.fbme.smvDebugger.panel.DebugPanelService
import java.nio.file.Path
import javax.swing.JComponent
import javax.swing.JOptionPane
import javax.swing.JPanel

class SmvDebugger(project: MPSProject) {
    private val smvService: SmvService
    private val debugPanelService: DebugPanelService
    private val ideaProject: Project
    private val counterexampleParser = CounterexampleParser
    private val unifiedParser: SMVCountereExampleParser
    private val fB2SMV: FB2SMV
    private val mpsProject: MPSProject
    fun run(
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        exported: Boolean
    ): JComponent? {
        return try {
            if (exported) {
                showExportedConterexample(compositeFb)
            } else {
               fB2SMV.convertFB(fbPath, compositeFb, mpsProject)
             //  verify(fbPath, compositeFb)
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
        val counterexample = smvService.parseCounterexample(file.toNioPath())
        return debugPanelService.run(compositeFb, counterexample)
    }

    private fun verify(fbPath: Path, compositeFb: CompositeFBTypeDeclaration): JPanel? {
        val specification = specification

        val counterexample = smvService.verify(fbPath, specification)
        if (counterexample == null) {
            notifySuccess()
            return null
        }


        unifiedParser.getUnifiedTrace("", counterexample,  compositeFb)
        return null
      //  return debugPanelService.run(compositeFb, counterexample.get())
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
