package org.fbme.debugger.simulator

import org.fbme.debugger.common.change.Change
import org.fbme.debugger.common.state.FBState

class SimulationTrace {
    private val states = mutableListOf<FBState>()
    private val changes = mutableListOf<Pair<List<String>, Change>>()

    fun addChange(fbPath: List<String>, change: Change) {
        changes.add(Pair(fbPath, change))
    }

    fun addState(state: FBState) {
        states.add(state)
    }
}