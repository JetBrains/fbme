package org.fbme.debugger.simulator.ui

import com.intellij.icons.AllIcons
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.JBMenuItem
import com.intellij.openapi.ui.JBPopupMenu
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.debugger.simulator.FBSimulator
import org.fbme.debugger.simulator.Simulator
import org.fbme.debugger.simulator.resolveSimulator
import org.fbme.ide.richediting.inspections.Inspector
import org.fbme.lib.common.Declaration
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.awt.event.MouseListener

class SimulatorPanel(
    project: Project,
    mpsProject: jetbrains.mps.project.Project,
    trace: ExecutionTrace,
    declaration: Declaration,
    originalDeclaration: Declaration,
    private val simulator: Simulator,
    explanationProducer: ExplanationProducer,
    inspector: Inspector? = null,
) : DebuggerPanel(project, mpsProject, trace, declaration, originalDeclaration, explanationProducer, inspector) {
    init {
        addMouseListenerToWatches()
    }

    private fun addMouseListenerToWatches() {
        val ml: MouseListener = object : MouseAdapter() {
            override fun mousePressed(e: MouseEvent) {
                if (e.isPopupTrigger) {
                    val popup = JBPopupMenu()
                    val watchPath = watchesTree
                        .selectionPath
                        ?.path
                        ?.toList()
                        ?.map { it.toString() }
                        ?.drop(1)
                        ?.joinToString(".")
                        ?.split(".")
                    if (statesList.selectedIndex == statesList.itemsCount - 1) {
                        val triggerItem = JBMenuItem("Trigger event", AllIcons.Actions.Execute)
                        triggerItem.addActionListener {
                            if (watchPath != null) {
                                val resolvedSimulator = simulator
                                    .resolveSimulator(watchPath.dropLast(1))!! as FBSimulator
                                resolvedSimulator.triggerEvent(watchPath.last())
                            }
                        }
                        popup.add(triggerItem)
                    }
                    val explainItem = JBMenuItem("Why?", AllIcons.Debugger.Question_badge)
                    explainItem.addActionListener {
                        showExplanation(e)
                    }
                    popup.add(explainItem)
                    popup.show(e.component, e.x, e.y)
                }
            }
        }
        watchesTree.addMouseListener(ml)
    }
}