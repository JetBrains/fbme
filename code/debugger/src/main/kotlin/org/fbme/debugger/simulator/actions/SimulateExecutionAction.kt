package org.fbme.debugger.simulator.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.debugger.common.actions.Action
import org.fbme.debugger.simulator.BFBSimulator
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class SimulateExecutionAction(cell: EditorCell) : Action {
    private val typeDeclaration: Declaration

    init {
        val style = cell.style
        val fbTypeDescriptor = style.get(RichEditorStyleAttributes.TYPE)

        typeDeclaration = fbTypeDescriptor.declaration!!
    }

    override fun apply() {
        when (typeDeclaration) {
            is BasicFBTypeDeclaration -> {
                for (algorithm in typeDeclaration.algorithms) {
                    val algorithmName = algorithm.name
                    BFBSimulator(typeDeclaration).interpretAlgorithm(algorithmName)
                }
            }
            else -> {}
        }
    }
}