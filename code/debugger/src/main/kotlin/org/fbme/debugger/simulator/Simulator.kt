package org.fbme.debugger.simulator

import androidx.compose.ui.awt.ComposePanel
import jetbrains.mps.project.Project
import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.simulator.ui.simulatePanel
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import javax.swing.JComponent

class Simulator private constructor(private val project: Project) {
    private val simulatePanels: MutableMap<FBTypeDeclaration, ComposePanel> = mutableMapOf()

    fun addSimulateTab(typeDeclaration: FBTypeDeclaration) {
        project.modelAccess.executeCommand {
            val fbSimulator = when (typeDeclaration) {
                is BasicFBTypeDeclaration -> BasicFBSimulator(
                    typeDeclaration = typeDeclaration,
                    state = BasicFBState(typeDeclaration),
                    parent = null,
                    fbInstanceName = null
                )
                is CompositeFBTypeDeclaration -> CompositeFBSimulator(
                    typeDeclaration = typeDeclaration,
                    state = CompositeFBState(typeDeclaration),
                    parent = null,
                    fbInstanceName = null
                )
                else -> error("Unsupported FB type to simulate execution")
            }
            simulatePanels[typeDeclaration] = simulatePanel(fbSimulator, project)
        }
    }

    fun getSimulateTab(fbTypeDeclaration: FBTypeDeclaration): JComponent? {
        return simulatePanels[fbTypeDeclaration]
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
            val simulator = Simulator(project)
            instances.putIfAbsent(project, simulator)
        }

        @JvmStatic
        @Synchronized
        fun unregister(project: Project) {
            check(instances.containsKey(project))
            instances.remove(project)
        }
    }
}