package org.fbme.smvDebugger.panel.items

import com.intellij.ui.components.JBLabel
import com.intellij.ui.components.JBPanel
import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import org.fbme.smvDebugger.visualization.SystemHighlighter
import java.awt.GridBagConstraints
import java.awt.GridBagLayout

class ControlPanel(counterexample: Counterexample?, systemHighlighter: SystemHighlighter) :
    JBPanel<ControlPanel>(), DebugPanelMVCItem {

    private val stepChanger: StepChanger
    private val globalTime: GlobalTime
    private val conditionNavigator: ConditionNavigator
    override fun setPanelModel(model: DebugPanelModel) {
        stepChanger.setPanelModel(model)
        globalTime.setPanelModel(model)
        conditionNavigator.setPanelModel(model)
    }

    override fun initView() {
        stepChanger.initView()
        globalTime.initView()
        conditionNavigator.initView()
        layout = GridBagLayout()
        val constraints = GridBagConstraints()
        constraints.fill = GridBagConstraints.HORIZONTAL
        constraints.weightx = 1.0
        constraints.gridx = 0
        constraints.gridy = 0
        add(JBLabel(STEP_LABEL_NAME), constraints)
        constraints.gridx = 1
        constraints.gridy = 0
        add(stepChanger, constraints)

        //    constraints.gridx = 0;
        //    constraints.gridy = 1;
        //    add(new JBLabel(TIME_LABEL_NAME), constraints);
        //
        //    constraints.gridx = 1;
        //    constraints.gridy = 1;
        //    add(globalTime, constraints);
        constraints.gridx = 0
        constraints.gridy = 2
        add(JBLabel(CONDITION_LABEL_NAME), constraints)
        constraints.gridx = 1
        constraints.gridy = 2
        add(conditionNavigator, constraints)
    }

    override fun initController() {
        stepChanger.initController()
        globalTime.initController()
        conditionNavigator.initController()
    }

    companion object {
        private const val STEP_LABEL_NAME = "Current step:"
        private const val TIME_LABEL_NAME = "Current time:"
        private const val CONDITION_LABEL_NAME = "Condition:"
    }

    init {
        stepChanger = StepChanger(counterexample, systemHighlighter)
        globalTime = GlobalTime()
        conditionNavigator = ConditionNavigator(counterexample)
    }
}
