package org.fbme.ide.richediting.adapters.ecc.cell

import com.intellij.ui.JBColor
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.nodeEditor.cells.TextLine
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*

class OutputCell(
    editorContext: EditorContext,
    node: SNode,
    private val action: StateAction,
    private val cellCollection: EditorCell_Collection,
    isOpenAlgorithmBody: MutableMap<StateAction, Boolean>
) : EditorCell_Basic(editorContext, node) {
    private val nameText: TextLine = TextLine("", style, false)
    private val backgroundColor: Color = CellConstants.OUTPUT_COLOR
    val isOpenAlgorithmBody: MutableMap<StateAction, Boolean>
    val text: String
        get() = nameText.text

    override fun relayoutImpl() {
        val lineSize = lineSize
        nameText.relayout()
        setTextFromAction()
        width = nameText.width
        height = lineSize + CellConstants.ACTIVE_HEIGHT_PADDING
        if (nameText.text.isEmpty()) {
            height /= 2
        }
    }

    private fun getBounds(position: Point): Rectangle {
        return Rectangle(position.x, position.y, myWidth, myHeight)
    }

    override fun paintSelectionIfRequired(g: Graphics, parentSettings: ParentSettings) {
        // do nothing
    }

    override fun paintContent(graphics: Graphics, settings: ParentSettings) {
        val g = graphics.create() as Graphics2D
        g.color = backgroundColor
        g.fillRoundRect(myX, myY, myWidth + CellConstants.ACTIVE_WEIGHT_PADDING, myHeight, 10, 10)
        if (!nameText.text.isEmpty()) {
            nameText.paint(
                graphics,
                myX + CellConstants.SHIFT_X + (myWidth - nameText.width) / 2,
                myY + CellConstants.SHIFT_Y,
                JBColor.BLACK
            )
        }
    }

    fun changeAlgorithm(newAlgorithm: AlgorithmDeclaration) {
        nameText.text = newAlgorithm.name
        action.algorithm.setTarget(newAlgorithm)
    }

    private val lineSize: Int
        get() = getLineSize(cellCollection.style)

    private fun setTextFromAction() {
        val outputTarget = action.event.getTarget()
        if (outputTarget != null) {
            nameText.text = action.event.presentation
        } else {
            nameText.text = ""
        }
    }

    init {
        this.isOpenAlgorithmBody = isOpenAlgorithmBody
        style.set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK)
        style.set(RichEditorStyleAttributes.STATE_COLLECTION, cellCollection)
        relayoutImpl()
        style.set(RichEditorStyleAttributes.OUTPUTS, action)
    }
}