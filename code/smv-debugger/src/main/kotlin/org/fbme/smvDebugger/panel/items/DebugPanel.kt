package org.fbme.smvDebugger.panel.items

import com.intellij.ui.components.JBPanel
import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import org.fbme.smvDebugger.visualization.BacktraceService
import org.fbme.smvDebugger.visualization.SystemHighlighter
import org.jdesktop.swingx.HorizontalLayout

class DebugPanel(
    counterexample: Counterexample?,
    systemHighlighter: SystemHighlighter,
    backtraceService: BacktraceService
) : JBPanel<JBPanel<out JBPanel<*>>?>(), DebugPanelMVCItem {
    private val controlPanel: ControlPanel
    private val counterexampleTable: CounterexampleTable
    override fun setPanelModel(model: DebugPanelModel) {
        controlPanel.setPanelModel(model)
        counterexampleTable.setPanelModel(model)
    }

    override fun initView() {
        controlPanel.initView()
        counterexampleTable.initView()
        layout = HorizontalLayout()
        add(controlPanel)
        add(counterexampleTable)
    }

    override fun initController() {
        controlPanel.initController()
        counterexampleTable.initController()
    }

    init {
        controlPanel = ControlPanel(counterexample, systemHighlighter)
        counterexampleTable = CounterexampleTable(counterexample, systemHighlighter, backtraceService)
    }
}
