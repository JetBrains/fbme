package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.adapters.fbnetwork.fb.AbstractFBCell
import org.fbme.ide.richediting.adapters.fbnetwork.fb.DiagramColors
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.fbme.scenes.controllers.LayoutUtil.getFontSize
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.awt.geom.AffineTransform
import java.awt.geom.GeneralPath

class EndpointPortCell(
    editorContext: EditorContext,
    isEditable: Boolean,
    isSource: Boolean,
    view: InterfaceEndpointView
) : PortCell {
    private val label: EditorCell_SceneLabel
    override val rootCell: EditorCell_Collection
    private val connectionKind: EntryKind
    private val isEditable: Boolean
    private val isSource: Boolean
    private fun createCollection(editorContext: EditorContext, node: SNode?): EditorCell_Collection {
        return object : EditorCell_Collection(editorContext, node, CellLayout_Horizontal()) {
            override fun paintContent(g: Graphics, parentSettings: ParentSettings) {
                this@EndpointPortCell.paint(g.create() as Graphics2D)
            }
        }
    }

    override val dNDBounds: Rectangle
        get() {
            val x = if (isSource) 0 else rootCell.width - scale(SPACE_FOR_DND)
            return Rectangle(x, 0, scale(SPACE_FOR_DND), rootCell.height)
        }
    override val height: Int
        get() = rootCell.height
    override val portCoordinate: Point
        get() {
            val portPosition = portPosition
            portPosition.translate(scale(AbstractFBCell.PORT_SIZE) / 2, scale(AbstractFBCell.PORT_SIZE) / 2)
            return portPosition
        }
    override val portPosition: Point
        get() {
            val x = if (isSource) rootCell.width - scale(AbstractFBCell.PORT_SIZE) else 0
            val y = rootCell.height / 2 - scale(AbstractFBCell.PORT_SIZE) / 2
            return Point(x, y)
        }
    override val portBounds: Rectangle
        get() {
            val x = if (isSource) scale(SPACE_FOR_DND) else scale(AbstractFBCell.PORT_SIZE)
            return Rectangle(x, 0, rootCell.width - scale(AbstractFBCell.PORT_SIZE + SPACE_FOR_DND), rootCell.height)
        }
    override val position: Point
        get() = Point(rootCell.x, rootCell.y)
    override val width: Int
        get() = rootCell.width
    private val lineSize: Int
        get() = getLineSize(rootCell.style)
    private val fontSize: Int
        get() = getFontSize(rootCell.style)

    private fun scale(size: Int): Int {
        return size * fontSize / EditorSettings.getInstance().fontSize
    }

    override fun relayout() {
        for (cell in rootCell) {
            cell.relayout()
        }
        calculateSizes()
        relayoutLabel()
    }

    private fun relayoutLabel() {
        val x =
            rootCell.x + if (isSource) scale(SPACE_FOR_DND) else scale(AbstractFBCell.PORT_SIZE + INNER_BORDER_PADDING)
        val y = rootCell.y - lineSize / 4
        label.moveTo(x, y)
    }

    private fun calculateSizes() {
        rootCell.width = calculateWidth()
        rootCell.height = calculateHeight()
    }

    private fun calculateWidth(): Int {
        return label.width + scale(SPACE_FOR_DND + AbstractFBCell.PORT_SIZE + INNER_BORDER_PADDING)
    }

    private fun calculateHeight(): Int {
        return lineSize
    }

    override fun paintTrace(g: Graphics2D, x: Int, y: Int) {
        val shape = getEndpointShape(x, y)
        g.paint = MPSColors.GRAY
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1).toFloat())
        g.draw(shape)
    }

    private fun paint(graphics: Graphics2D) {
        val x = rootCell.x
        val y = rootCell.y
        val shape = getEndpointShape(x, y)
        val shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2.0, 2.0))
        graphics.paint = Color(0xEEEEEE)
        graphics.fill(shadowShape)
        graphics.stroke = BasicStroke(scale(1).toFloat())
        graphics.color = MPSColors.BLACK
        graphics.draw(shape)
        val foreground = rootCell.style.get(StyleAttributes.TEXT_COLOR)
        drawPortIcon(graphics, foreground)
    }

    private fun drawPortIcon(graphics: Graphics2D, borderColor: Color) {
        val portPosition = portPosition
        portPosition.translate(rootCell.x, rootCell.y)
        val portBounds = Rectangle(
            portPosition.x,
            portPosition.y,
            scale(AbstractFBCell.PORT_SIZE),
            scale(AbstractFBCell.PORT_SIZE)
        )
        graphics.color = DiagramColors.getColorFor(connectionKind, isEditable)
        graphics.fill(portBounds)
        graphics.color = borderColor
        graphics.draw(portBounds)
    }

    private fun getEndpointShape(x: Int, y: Int): GeneralPath {
        val width = rootCell.width - scale(AbstractFBCell.PORT_SIZE)
        val height = rootCell.height
        val xLeft = x + if (isSource) 0 else scale(AbstractFBCell.PORT_SIZE)
        val shape: Shape = Rectangle(xLeft, y, width, height)
        return GeneralPath(shape)
    }

    companion object {
        private const val SPACE_FOR_DND = 20
        private const val INNER_BORDER_PADDING = 2
    }

    init {
        connectionKind = view.kind
        this.isEditable = isEditable
        this.isSource = isSource
        label = EditorCell_SceneLabel(editorContext, view.associatedNode, view.name, false)
        rootCell = createCollection(editorContext, view.associatedNode)
        rootCell.addEditorCell(label)
    }
}
