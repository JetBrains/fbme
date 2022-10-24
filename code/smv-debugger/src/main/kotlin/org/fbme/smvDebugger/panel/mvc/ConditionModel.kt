package org.fbme.smvDebugger.panel.mvc

import javax.swing.AbstractSpinnerModel

class ConditionModel : AbstractSpinnerModel() {
    private var condition = ""
    override fun getValue(): Any {
        return condition
    }

    override fun setValue(value: Any) {
        condition = value as String
        fireStateChanged()
    }

    override fun getNextValue(): Any {
        return condition
    }

    override fun getPreviousValue(): Any {
        return condition
    }
}
