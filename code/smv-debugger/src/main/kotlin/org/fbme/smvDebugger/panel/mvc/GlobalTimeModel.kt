package org.fbme.smvDebugger.panel.mvc

import java.beans.PropertyChangeListener
import javax.swing.event.SwingPropertyChangeSupport

class GlobalTimeModel {
    private val propertyChangeSupport = SwingPropertyChangeSupport(this)
    var time: String? = null
        set(time) {
            val oldTime = this.time
            field = time
            propertyChangeSupport.firePropertyChange(GLOBAL_TIME, oldTime, this.time)
        }

    fun addPropertyChangeListener(listener: PropertyChangeListener?) {
        propertyChangeSupport.addPropertyChangeListener(listener)
    }

    fun addPropertyChangeListener(propertyName: String?, listener: PropertyChangeListener?) {
        propertyChangeSupport.addPropertyChangeListener(propertyName, listener)
    }

    companion object {
        const val GLOBAL_TIME = "globalTime"
    }
}
