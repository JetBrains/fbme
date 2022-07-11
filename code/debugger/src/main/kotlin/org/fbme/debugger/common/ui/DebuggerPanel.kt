package org.fbme.debugger.common.ui

import com.intellij.openapi.project.Project
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.lib.common.Declaration
import javax.swing.JComponent

open class DebuggerPanel(
    private val project: Project,
    private val trace: ExecutionTrace,
    private val declaration: Declaration
) {
    protected val explanationProducer = ExplanationProducer(trace, declaration)

    protected open val debuggerToolWindow = DebuggerToolWindow(project, trace, declaration, explanationProducer)

    init {

    }

    val panel: JComponent
        get() {
            return debuggerToolWindow.toolWindowPanel
        }
}