package org.fbme.debugger

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.project.Project
import org.fbme.ide.platform.debugger.Watchable
import javax.swing.JComponent

class Debugger private constructor(private val project: Project) {
    private val watchables = mutableStateMapOf<Watchable, String>()
    private val searchWatchables = mutableStateOf(TextFieldValue())
    private val states = mutableStateListOf<StateData>()
    private val searchStates = mutableStateOf(TextFieldValue())
    private val inspections = mutableMapOf<Watchable, InspectionProvider>()

    private val onState: (StateData) -> Unit  = { state: StateData ->
        watchables.putAll(state.watchables)
        for ((watchable, value) in watchables) {
            val inspectionProvider = inspections[watchable]
            checkNotNull(inspectionProvider)
            if (watchable === state.watchable) {
                inspectionProvider.setInspection(value, textHighlight)
            } else {
                inspectionProvider.setInspection(value)
            }
        }
    }

    data class StateData(
        val watchable: Watchable,
        val oldValue: String?,
        val newValue: String,
        val watchables: Map<Watchable, String>
    ) {
        internal val focusRequester = FocusRequester()
        override fun toString(): String {
            return watchable.name + ": " + (oldValue ?: "???") + " -> " + newValue
        }
    }

    fun watch(watchable: Watchable, inspectionProvider: InspectionProvider) {
        if (!watchables.contains(watchable)) {
            watchables[watchable] = "???"
            inspections[watchable] = inspectionProvider
        }
    }

    fun stopWatch(watchable: Watchable) {
        if (watchables.contains(watchable)) {
            watchables.remove(watchable)
        }
    }

    fun isWatched(watchable: Watchable): Boolean {
        return watchables.contains(watchable)
    }

    @Synchronized
    fun setValueForWatchable(watchable: Watchable, newValue: String) {
        val oldValue = watchables[watchable]
        if (oldValue != newValue) {
            watchables[watchable] = newValue
            states.add(
                index = 0,
                StateData(
                    watchable = watchable,
                    oldValue = oldValue,
                    newValue = newValue,
                    watchables = watchables.toMap()
                )
            )
        }
    }

    fun getWatched(): Set<Watchable> {
        return watchables.keys
    }

    fun getComponent(): JComponent {
        return debuggerPanel(states, searchStates, onState, watchables, searchWatchables)
    }

    companion object {
        private val instances: MutableMap<Project, Debugger> = mutableMapOf()

        @Synchronized
        fun getInstance(project: Project): Debugger? = instances[project]

        @Synchronized
        fun register(project: Project) {
            check(!instances.containsKey(project))
            val debugger = Debugger(project)
            instances.putIfAbsent(project, debugger)
        }

        @Synchronized
        fun unregister(project: Project) {
            check(instances.containsKey(project))
            instances.remove(project)
        }
    }
}