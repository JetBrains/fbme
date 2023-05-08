package org.fbme.smvDebugger.panel.mvc

import java.beans.PropertyChangeListener
import javax.swing.event.SwingPropertyChangeSupport

class StepIndexModel {
    private val propertyChangeSupport = SwingPropertyChangeSupport(this)
    var currentStepIndex = 0
        private set
    var previousStepIndex = 0
        private set

    fun setStepIndex(stepIndex: Int) {
        previousStepIndex = currentStepIndex
        currentStepIndex = stepIndex
        propertyChangeSupport.firePropertyChange(STEP_INDEX, previousStepIndex, currentStepIndex)
    }

    fun addPropertyChangeListener(listener: PropertyChangeListener?) {
        propertyChangeSupport.addPropertyChangeListener(listener)
    }

    fun addPropertyChangeListener(propertyName: String?, listener: PropertyChangeListener?) {
        propertyChangeSupport.addPropertyChangeListener(propertyName, listener)
    }

    companion object {
        const val STEP_INDEX = "stepIndex"
    }
}
