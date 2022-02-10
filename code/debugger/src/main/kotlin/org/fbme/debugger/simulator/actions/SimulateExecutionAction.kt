package org.fbme.debugger.simulator.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.debugger.common.actions.Action
import org.fbme.debugger.simulator.BFBSimulator
import org.fbme.debugger.simulator.CFBSimulator
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class SimulateExecutionAction(cell: EditorCell) : Action {
    private val typeDeclaration: Declaration

    init {
        val style = cell.style
        val fbTypeDescriptor = style.get(RichEditorStyleAttributes.TYPE)

        typeDeclaration = fbTypeDescriptor.declaration!!
    }

    override fun apply() {
        when (typeDeclaration) {
            is BasicFBTypeDeclaration -> BFBSimulator(typeDeclaration).doStep()
            is CompositeFBTypeDeclaration -> CFBSimulator(typeDeclaration).doStep()
            else -> {}
        }
    }
}