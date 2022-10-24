package org.fbme.ide.richediting.adapters.ecc.cell

import jetbrains.mps.editor.runtime.style.Measure
import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ModelAccessor
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Graphics
import java.awt.Graphics2D

class StateCell(
    editorContext: EditorContext,
    accessor: ModelAccessor,
    node: SNode,
    private val isOpenActions: MutableMap<StateDeclaration, Boolean>,
    private val stateDeclaration: StateDeclaration
) : EditorCell_Property(editorContext, accessor, node) {
    private val isOpen: Boolean = isOpenActions.getOrDefault(stateDeclaration, true)

    override fun paintContent(graphics: Graphics, settings: ParentSettings) {
        val g = graphics.create() as Graphics2D
        if (isOpen) {
            g.color = CellConstants.STATE_COLOR
        } else {
            g.color = CellConstants.HIDDEN_STATE_COLOR
        }
        g.fillRoundRect(
            myX,
            myY,
            myWidth + CellConstants.ACTIVE_WEIGHT_PADDING,
            myHeight,
            CellConstants.ROUNDED,
            CellConstants.ROUNDED
        )
        val dx = (myWidth - myTextLine.width + CellConstants.ACTIVE_WEIGHT_PADDING) / 2
        myX += dx
        super.paintContent(graphics, settings)
        myX -= dx
    }

    companion object {
        @JvmStatic
        fun createStateCell(
            editorContext: EditorContext,
            node: SNode,
            state: StateDeclaration,
            cellCollection: EditorCell_Collection,
            isOpenActions: MutableMap<StateDeclaration, Boolean>
        ): StateCell {
            val modelAccessor: ModelAccessor = object : ModelAccessor {
                override fun getText(): String {
                    return state.name
                }

                override fun setText(text: String) {
                    state.name = text
                }

                override fun isValidText(text: String): Boolean {
                    return text != ""
                }
            }
            return StateCell(editorContext, modelAccessor, node, isOpenActions, state)
        }

        @JvmStatic
        fun isOpenBody(cell: StateCell): Boolean {
            return cell.isOpenActions.getOrDefault(cell.stateDeclaration, true)
        }

        @JvmStatic
        fun changeHideStateActionsInState(cell: StateCell) {
            val nowIsOpen = cell.isOpenActions.getOrDefault(cell.stateDeclaration, true)
            cell.isOpenActions[cell.stateDeclaration] = !nowIsOpen
            cell.context.editorComponent.updater.update()
        }
    }

    init {
        style.set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK)
        style.set(StyleAttributes.PADDING_BOTTOM, Padding(0.05, Measure.SPACES))
    }
}
