package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.TextBuilder
import jetbrains.mps.openapi.editor.cells.CellActionType
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Color
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.Rectangle

class FBTypeEditCellComponent(context: EditorContext, fbType: FBTypeDescriptor, node: SNode, isEditable: Boolean)
    : AbstractFBCell(context, fbType, node, isEditable) {

    private val typeNameLabel: EditorCell_SceneLabel

    override val rootCell: EditorCell_Collection
    private val backgroundColor: Color
        get() {
            val background = rootCell.style.get(StyleAttributes.BACKGROUND_COLOR)
            return background ?: MPSColors.LIGHT_GRAY
        }
    private val typeBackgroundColor: Color
        get() = MPSColors.LIGHT_BLUE
    private val foregroundColor: Color
        get() = rootCell.style.get(StyleAttributes.TEXT_COLOR)
    init {
        rootCell = createRootCell()
        rootCell.style.set(RichEditorStyleAttributes.TYPE, fbType)
        typeNameLabel = createTypeNameLabel()
        rootCell.addEditorCell(typeNameLabel)
        rootCell.style.set(StyleAttributes.TEXT_COLOR, if (isEditable) MPSColors.BLACK else MPSColors.DARK_GRAY)
        initPorts()
    }

    private fun createRootCell(): EditorCell_Collection {
        return object : EditorCell_Collection(
                context,
                node,
                object : AbstractCellLayout() {
                    override fun doLayout(collection: jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
                        assert(collection === rootCell)
                        relayout()
                    }

                    override fun doLayoutText(iterable: Iterable<EditorCell>): TextBuilder {
                        return TextBuilderImpl()
                    }
                }
        ) {
            override fun paintContent(g: Graphics, parentSettings: ParentSettings) {
                this@FBTypeEditCellComponent.paint(g.create() as Graphics2D)
            }

            override fun paintSelection(g: Graphics, c: Color, drawBorder: Boolean, parentSettings: ParentSettings) {
                // do noting
            }

            override fun findLeaf(x: Int, y: Int): EditorCell? {
                val leaf = super.findLeaf(x, y)
                if (leaf != null) {
                    return leaf
                }
                return if (Rectangle(myX, myY, myWidth, myHeight).contains(x, y)) {
                    this
                } else null
            }

            override fun onAdd() {
                super.onAdd()
                installNavigatable()
                setAction(CellActionType.BACKSPACE, parent.parent.getAction(CellActionType.BACKSPACE))
            }
        }
    }

    private fun paint(graphics2D: Graphics2D) {
        TODO("Not yet implemented")
    }

    private fun installNavigatable() {
        TODO("Not yet implemented")
    }

    override fun paintTrace(g: Graphics2D, x: Int, y: Int) {
        val shape = getComponentShape(x, y)
        g.paint = MPSColors.GRAY
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1).toFloat())
        g.draw(shape)
    }

    override val eventPortsCount: Int
        get() = super.eventPortsCount + 3

    override fun getInputEventPortBounds(eventNumber: Int): Rectangle {
        TODO("Not yet implemented")
    }

    override fun getOutputEventPortBounds(eventNumber: Int): Rectangle {
        TODO("Not yet implemented")
    }

    override fun getInputDataPortBounds(dataNumber: Int): Rectangle {
        TODO("Not yet implemented")
    }

    override fun getOutputDataPortBounds(dataNumber: Int): Rectangle {
        TODO("Not yet implemented")
    }

    override fun getSocketPortBounds(socketNumber: Int): Rectangle {
        TODO("Not yet implemented")
    }

    override fun getPlugPortBounds(plugNumber: Int): Rectangle {
        TODO("Not yet implemented")
    }

}
