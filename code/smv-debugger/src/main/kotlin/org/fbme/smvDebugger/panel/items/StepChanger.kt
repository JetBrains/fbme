package org.fbme.smvDebugger.panel.items

import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import org.fbme.smvDebugger.panel.mvc.StepIndexModel
import org.fbme.smvDebugger.visualization.SystemHighlighter
import java.awt.Dimension
import java.beans.PropertyChangeEvent
import javax.swing.JSpinner
import javax.swing.event.ChangeEvent

class StepChanger(private val counterexample: Counterexample?, private val systemHighlighter: SystemHighlighter) :
    HorizontalSpinner(), DebugPanelMVCItem {
    private var model: DebugPanelModel? = null
    override fun setPanelModel(model: DebugPanelModel) {
        this.model = model
        setModel(model.stepSpinnerModel)
    }

    override fun initView() {
        preferredSize = Dimension(SPINNER_WIDTH, SPINNER_HEIGHT)
    }

    override fun initController() {
        val stepIndexModel = model!!.stepIndexModel
        addChangeListener { event: ChangeEvent ->
            val spinner = event.source as JSpinner
            val step = spinner.value as String
            val stepIndex = counterexample!!.indexOf(step)
            stepIndexModel.setStepIndex(stepIndex)
        }
        stepIndexModel.addPropertyChangeListener(StepIndexModel.STEP_INDEX) { event: PropertyChangeEvent ->
            val stepIndex = event.newValue as Int
            val dataScrollModel = model!!.dataScrollModel
            val percent = stepIndex.toDouble() / counterexample!!.length()
            val value = (dataScrollModel.maximum * percent).toInt()
            dataScrollModel.value = value
            model!!.globalTimeModel.time = counterexample.timeOf(stepIndex)
            val itemValues = counterexample.getItemValues(stepIndex)
            systemHighlighter.highlight(itemValues)
            val step = counterexample.steps[stepIndex]
            setValue(step)
        }
    }

    companion object {
        private const val SPINNER_WIDTH = 100
        private const val SPINNER_HEIGHT = 25
    }
}
