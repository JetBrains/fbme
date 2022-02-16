package org.fbme.debugger.simulator

import androidx.compose.ui.awt.ComposePanel
import jetbrains.mps.project.Project
import org.fbme.debugger.simulator.ui.simulatePanel
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import javax.swing.JComponent

class Simulator private constructor(private val project: Project) {
    private val simulatePanel: ComposePanel by lazy { simulatePanel() }

    fun simulateFB(fbTypeDeclaration: FBTypeDeclaration) {

    }

    fun getSimulateTab(): JComponent {
        return simulatePanel
    }

    companion object {
        private val instances: MutableMap<Project, Simulator> = mutableMapOf()

        @JvmStatic
        @Synchronized
        fun getInstance(project: Project): Simulator? = instances[project]

        @JvmStatic
        @Synchronized
        fun register(project: Project) {
            check(!instances.containsKey(project))
            val debugger = Simulator(project)
            instances.putIfAbsent(project, debugger)
        }

        @JvmStatic
        @Synchronized
        fun unregister(project: Project) {
            check(instances.containsKey(project))
            instances.remove(project)
        }
    }
}