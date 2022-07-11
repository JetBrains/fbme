package org.fbme.debugger.simulator.ui

import com.intellij.icons.AllIcons
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.JBMenuItem
import com.intellij.openapi.ui.JBPopupMenu
import com.intellij.openapi.ui.popup.Balloon
import com.intellij.ui.GotItTooltip
import org.fbme.debugger.common.resolvePath
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.ui.DebuggerToolWindow
import org.fbme.debugger.common.ui.resolveValue
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.debugger.simulator.FBSimulatorImpl
import org.fbme.debugger.simulator.ResourceSimulator
import org.fbme.debugger.simulator.Simulator
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import java.awt.Component
import java.awt.FlowLayout
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.awt.event.MouseListener
import javax.swing.JComponent
import javax.swing.JLabel
import javax.swing.JPanel
import javax.swing.JTree
import javax.swing.tree.DefaultMutableTreeNode
import javax.swing.tree.DefaultTreeCellRenderer

class SimulatorToolWindow(
    private val project: Project,
    private val trace: ExecutionTrace,
    private val declaration: Declaration,
    private val simulator: Simulator,
    private val explanationProducer: ExplanationProducer
) : DebuggerToolWindow(project, trace, declaration, explanationProducer) {
    init {
        val ml: MouseListener = object : MouseAdapter() {
            override fun mousePressed(e: MouseEvent) {
                if (e.isPopupTrigger) {
                    val popup = JBPopupMenu()
                    val watchPath = watchesTree.selectionPath?.path?.toList()?.map { it.toString() }?.drop(1)?.joinToString(".")?.split(".")
                    if (statesList.selectedIndex == statesList.itemsCount - 1) {
                        val triggerItem = JBMenuItem("Trigger event", AllIcons.Actions.Execute)
                        triggerItem.addActionListener {
                            val selectionPath = watchPath
                            if (selectionPath != null) {
                                when (simulator) {
                                    is ResourceSimulator -> {}
                                    is FBSimulatorImpl -> {
                                        simulator.resolveSimulator(selectionPath.dropLast(1))!!
                                            .triggerEvent(selectionPath.last())
                                    }
                                }
                            }
                        }
                        popup.add(triggerItem)
                    }
                    val explainItem = JBMenuItem("Why?", AllIcons.Debugger.Question_badge)
                    explainItem.addActionListener {
                        showExplanationPopup(e)
                    }
                    popup.add(explainItem)
                    popup.show(e.component, e.x, e.y)
                }
            }
        }
        watchesTree.addMouseListener(ml)
    }
}