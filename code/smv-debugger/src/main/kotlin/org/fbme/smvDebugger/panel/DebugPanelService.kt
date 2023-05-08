package org.fbme.smvDebugger.panel

import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.panel.items.DebugPanel
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import org.fbme.smvDebugger.visualization.BacktraceService
import org.fbme.smvDebugger.visualization.SystemHighlighter
import javax.swing.JPanel

class DebugPanelService(private val project: MPSProject) {
    fun run(compositeFb: CompositeFBTypeDeclaration, counterexample: Counterexample?): JPanel {
        val backtraceService = BacktraceService(project, compositeFb)
        val systemHighlighter = SystemHighlighter(project, compositeFb)
        val model = DebugPanelModel(counterexample)
        val debugPanel = DebugPanel(counterexample, systemHighlighter, backtraceService)
        debugPanel.setPanelModel(model)
        debugPanel.initView()
        debugPanel.initController()
        model.stepIndexModel.setStepIndex(0)
        model.globalTimeModel.time = counterexample!!.timeOf(0)
        val itemValues = counterexample.getItemValues(0)
        systemHighlighter.highlight(itemValues)
        return debugPanel
    }
}
