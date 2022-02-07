package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter

class ECCSimulator(private val context: Context) {
    private val interpreter = STInterpreter(context)

    fun doStep() {
        // TODO: do d(b?)fs
    }
}