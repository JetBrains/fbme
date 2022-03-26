package org.fbme.debugger.common.trace

import org.fbme.debugger.common.change.Change
import org.fbme.debugger.common.state.State

class ExecutionTrace(initialState: State) {
    private val states = mutableListOf(initialState.copy())
    private val changes = mutableListOf<Pair<List<String>, Change>>()

    fun getStates(): List<State> {
        return states
    }

    fun getChanges(): List<Pair<List<String>, Change>> {
        return changes
    }

    fun addStateAndChange(state: State, fbChange: Pair<List<String>, Change>) {
        states.add(state)
        changes.add(fbChange)
    }
}