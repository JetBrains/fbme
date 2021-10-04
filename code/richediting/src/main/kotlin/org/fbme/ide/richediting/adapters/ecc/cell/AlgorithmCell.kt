package org.fbme.ide.richediting.adapters.ecc.cell

import jetbrains.mps.editor.runtime.style.Measure
import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ModelAccessor
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.ecc.StateAction
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.Point
import kotlin.math.max

class AlgorithmCell(
    private val editorContext: EditorContext,
    accessor: ModelAccessor,
    node: SNode,
    private val action: StateAction,
    private val cellCollection: EditorCell_Collection,
    val algorithmBody: EditorCell_Collection?,
    private val isOpenAlgorithmBody: MutableMap<StateAction, Boolean>
) : EditorCell_Property(editorContext, accessor, node) {
    var isOpenBody: Boolean
    private val hasTarget: Boolean

    init {
        style.set(RichEditorStyleAttributes.ALGORITHMS, action)
        isOpenAlgorithmBody.putIfAbsent(action, true)
        isOpenBody = isOpenAlgorithmBody[action]!!
        hasTarget = action.algorithm.target != null
        style.set(StyleAttributes.PADDING_BOTTOM, Padding(0.05, Measure.SPACES))
        style.set(RichEditorStyleAttributes.STATE_COLLECTION, cellCollection)
    }

    fun relayoutAll() {
        if (!hasTarget) {
            height /= 2
            isEditable = false
        } else {
            isEditable = true
        }
        relayout()
        if (isOpenBody && algorithmBody != null) {
            algorithmBody.relayout()
            for (editorCell in algorithmBody) {
                editorCell.relayout()
            }
        }
    }

    var totalWidth: Int
        get() = if (isOpenBody && algorithmBody != null) max(width, algorithmBody.width) else width
        set(width) {
            setWidth(width + CellConstants.ACTIVE_WEIGHT_PADDING)
            if (isOpenBody && algorithmBody != null) {
                algorithmBody.width = width
            }
        }
    val totalHeight: Int
        get() = if (isOpenBody && algorithmBody != null) myHeight + algorithmBody.height + CellConstants.BOTTOM_PADDING else height

    fun moveToAll(x: Int, y: Int, currentHeight: Int) {
        var h = currentHeight
        moveTo(x, y + h)
        h += height
        if (isOpenBody && algorithmBody != null) {
            algorithmBody.moveTo(x + CellConstants.LEFT_ALGORITHM_BODY_PADDING, y + h)
        }
    }

    val algorithmBodyPoint: Point
        get() = Point(x + CellConstants.LEFT_ALGORITHM_BODY_PADDING, y + height)

    override fun paintContent(graphics: Graphics, settings: ParentSettings) {
        if (isOpenBody && algorithmBody != null) {
            val g = graphics.create() as Graphics2D
            g.color = CellConstants.ALGORITHM_COLOR
            g.fillRoundRect(myX, myY, myWidth, totalHeight, CellConstants.ROUNDED, CellConstants.ROUNDED)
            drawText(graphics, settings)
        } else if (algorithmBody != null) {
            val g = graphics.create() as Graphics2D
            g.color = CellConstants.HIDDEN_ALGORITHM_COLOR
            g.fillRoundRect(myX, myY, myWidth, myHeight, CellConstants.ROUNDED, CellConstants.ROUNDED)
            drawText(graphics, settings)
        } else {
            val g = graphics.create() as Graphics2D
            g.color = CellConstants.ALGORITHM_COLOR
            g.fillRoundRect(myX, myY, myWidth, myHeight, 10, 10)
            if (isEditable) {
                drawText(graphics, settings)
            }
        }
    }

    private fun drawText(graphics: Graphics, settings: ParentSettings) {
        val dx = (myWidth - myTextLine.width) / 2
        myX += dx
        super.paintContent(graphics, settings)
        myX -= dx
    }

    companion object {
        @JvmStatic
        fun createAlgorithmCell(
            editorContext: EditorContext,
            algorithmDeclaration: AlgorithmDeclaration?,
            node: SNode,
            action: StateAction,
            cellCollection: EditorCell_Collection,
            body: EditorCell_Collection?,
            isOpenAlgorithmBody: MutableMap<StateAction, Boolean>
        ): AlgorithmCell {
            val modelAccessor: ModelAccessor = object : ModelAccessor {
                override fun getText(): String? {
                    if (algorithmDeclaration == null) {
                        return ""
                    }
                    val name = algorithmDeclaration.name
                    return if (name == "") null else name
                }

                override fun setText(text: String?) {
                    algorithmDeclaration!!.name = text ?: ""
                }

                override fun isValidText(text: String): Boolean {
                    return true
                }
            }
            return AlgorithmCell(editorContext, modelAccessor, node, action, cellCollection, body, isOpenAlgorithmBody)
        }

        @JvmStatic
        fun changeIsOpenBody(cell: AlgorithmCell) {
            val oldValue = cell.isOpenAlgorithmBody[cell.action]!!
            val newValue = !oldValue
            cell.isOpenAlgorithmBody[cell.action] = newValue
            cell.isOpenBody = newValue
            if (!newValue) {
                cell.cellCollection.removeCell(cell.algorithmBody)
            } else {
                cell.cellCollection.addEditorCellAfter(cell.algorithmBody, cell)
            }
            cell.editorContext.editorComponent.updater.update()
        }
    }
}