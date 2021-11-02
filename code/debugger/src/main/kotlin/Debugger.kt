package org.fbme.debugger

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.project.Project
import org.fbme.ide.platform.debugger.Watchable
import javax.swing.JComponent

class Debugger(project: Project) {
    private val watchables = mutableStateListOf<Watchable>()
    private val searchWatchables = mutableStateOf<TextFieldValue>(TextFieldValue())

    fun watch(watchable: Watchable) {
        if (!watchables.contains(watchable)) {
            watchables.add(watchable)
        }
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