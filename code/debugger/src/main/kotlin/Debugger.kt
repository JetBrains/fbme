package org.fbme.debugger

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.project.Project
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.ide.platform.debugger.WatchedValueListener
import org.fbme.ide.platform.debugger.WatcherFacade
import javax.swing.JComponent

class Debugger private constructor(private val project: Project) {
    private val watchables = mutableStateMapOf<Watchable, String>()
    private val searchWatchables = mutableStateOf(TextFieldValue())

    fun watch(watchable: Watchable) {
        if (!watchables.contains(watchable)) {
            watchables[watchable] = "???"
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

    fun setValueForWatchable(watchable: Watchable, value: String) {
        watchables[watchable] = value
    }

    fun getWatched(): Set<Watchable> {
        return watchables.keys
    }

    fun getComponent(): JComponent {
        return debuggerPanel(watchables, searchWatchables)
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