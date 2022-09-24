package org.fbme.smvDebugger.panel.items

import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.panel.condition.ConditionParseException
import org.fbme.smvDebugger.panel.condition.ConditionParser
import org.fbme.smvDebugger.panel.condition.Expression
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import java.awt.Dimension
import java.awt.event.ActionEvent
import java.util.function.Function
import java.util.function.Predicate
import javax.swing.JButton
import javax.swing.JFormattedTextField
import javax.swing.JOptionPane

class ConditionNavigator(private val counterexample: Counterexample?) : HorizontalSpinner(), DebugPanelMVCItem {
    private val conditionParser: ConditionParser = ConditionParser()
    private var model: DebugPanelModel? = null
    override fun setPanelModel(model: DebugPanelModel) {
        this.model = model
        setModel(model.conditionModel)
    }

    override fun initView() {
        preferredSize = Dimension(SPINNER_WIDTH, SPINNER_HEIGHT)
        conditionField!!.isEditable = true
    }

    override fun initController() {
        for (component in components) {
            val componentName = component.name
            if (componentName == HorizontalSpinnerUI.NEXT_BUTTON_NAME) {
                val nextButton = component as JButton
                nextButton.addActionListener { event: ActionEvent? -> processAction({ stepIndex: Int -> stepIndex < counterexample!!.length() }) { stepIndex: Int -> stepIndex + 1 } }
            } else if (componentName == HorizontalSpinnerUI.PREVIOUS_BUTTON_NAME) {
                val previousButton = component as JButton
                previousButton.addActionListener { event: ActionEvent? -> processAction({ stepIndex: Int -> stepIndex >= 0 }) { stepIndex: Int -> stepIndex - 1 } }
            }
        }
    }

    private fun processAction(stopPredicate: Predicate<Int>, stepFunction: Function<Int, Int>) {
        val condition = conditionField!!.text
        val expression: Expression? = try {
            conditionParser.parse(condition)
        } catch (e: ConditionParseException) {
            JOptionPane.showMessageDialog(null, e.message)
            return
        }
        val currentStepIndex = model!!.stepIndexModel.currentStepIndex
        var stepIndex = stepFunction.apply(currentStepIndex)
        while (stopPredicate.test(stepIndex)) {
            val itemSimpleNameToValueMap = counterexample!!.getItemSimpleNameToValueMap(stepIndex)
            if (expression!!.evaluate(itemSimpleNameToValueMap)) {
                model!!.stepIndexModel.setStepIndex(stepIndex)
                return
            }
            stepIndex = stepFunction.apply(stepIndex)
        }
    }

    private val conditionField: JFormattedTextField?
        private get() {
            for (component in components) {
                if (component is DefaultEditor) {
                    return component.textField
                }
            }
            return null
        }

    companion object {
        private const val SPINNER_WIDTH = 300
        private const val SPINNER_HEIGHT = 25
    }

}
