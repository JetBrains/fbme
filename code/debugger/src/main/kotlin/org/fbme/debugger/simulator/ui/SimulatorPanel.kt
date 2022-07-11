package org.fbme.debugger.simulator.ui

import com.intellij.openapi.project.Project
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.debugger.simulator.Simulator
import org.fbme.lib.common.Declaration

class SimulatorPanel(
    private val project: Project,
    private val simulator: Simulator,
    declaration: Declaration
) : DebuggerPanel(project, simulator.trace, declaration) {
    override val debuggerToolWindow = SimulatorToolWindow(project, simulator.trace, declaration, simulator, explanationProducer)
}