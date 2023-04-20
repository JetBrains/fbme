package org.fbme.smvDebugger.panel.items

import javax.swing.JSpinner

open class HorizontalSpinner : JSpinner() {
    init {
        setUI(HorizontalSpinnerUI())
    }
}
