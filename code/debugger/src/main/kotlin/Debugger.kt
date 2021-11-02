package org.fbme.debugger

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.project.Project
import org.fbme.ide.platform.debugger.Watchable
import javax.swing.JComponent

class Debugger(project: Project) {
    private val watchables = mutableStateListOf<Watchable>()
    private val search = mutableStateOf<TextFieldValue>(TextFieldValue())

    fun watch(watchable: Watchable) {
        if (!watchables.contains(watchable)) {
            watchables.add(watchable)
        }
    }

    fun getComponent(): JComponent {
        val composePanel = ComposePanel()

        composePanel.setContent {
            Column {
                SearchView(search)
                WatchableList(watchables, search)
            }
        }

        return composePanel
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