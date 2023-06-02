package org.fbme.debugger.plugin

import com.intellij.openapi.components.service
import com.intellij.openapi.project.Project
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.lib.common.Declaration

class DebuggerToolWindow(val project: Project) {

    private val panels = hashMapOf<Declaration, DebuggerPanel>()

    fun getPanel(declaration: Declaration): DebuggerPanel? = panels[declaration]

    fun addPanel(declaration: Declaration, panel: DebuggerPanel) {
        panels[declaration] = panel
    }

    companion object {
        val ID = "Debugger"

        fun getInstance(project: Project) = project.service<DebuggerToolWindow>()
    }
}