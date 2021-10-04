package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.scenes.controllers.components.ComponentController
import java.awt.*
import java.util.function.Function

class EndpointPortController(context: EditorContext, private val view: InterfaceEndpointView) :
    ComponentController<Point>, FBNetworkComponentController {
    private val isEditable: Boolean = view.isEditable
    private val isSource: Boolean = view.isSource

    @JvmField
    var portCell: EndpointPortCell
    
    override val componentCell: EditorCell
        get() = portCell.rootCell

    override fun canStartMoveAt(position: Point, x: Int, y: Int): Boolean {
        return isEditable && dNDBounds.contains(x, y)
    }

    override fun getPortCoordinates(port: NetworkPortView, position: Point): Point {
        assertSelf(port)
        return translatePoint(portCell.portCoordinate, position)
    }

    override fun getPortBounds(port: NetworkPortView, position: Point): Rectangle {
        assertSelf(port)
        return translateRectangle(portCell.portBounds, position)
    }

    override fun getBounds(position: Point): Rectangle {
        return Rectangle(position.x, position.y, portCell.width, portCell.height)
    }

    override fun isSource(port: NetworkPortView): Boolean {
        assertSelf(port)
        return isSource
    }

    private fun assertSelf(port: NetworkPortView) {
        require(port == view) { "invalid port" }
    }

    override fun transformFormAt(originalForm: Point, x: Int, y: Int): Function<Point, Point> {
        return Function { it }
    }

    override fun updateCellWithForm(position: Point) {
        componentCell.moveTo(position.x, position.y)
        portCell.relayout()
    }

    override fun updateCellSelection(selected: Boolean) {
        // do nothing
    }

    override fun paintTrace(g: Graphics?, position: Point) {
        portCell.paintTrace(g!!.create() as Graphics2D, position.x, position.y)
    }

    override fun translateForm(position: Point, dx: Int, dy: Int): Point {
        val point = Point(position)
        point.translate(dx, dy)
        return point
    }

    override fun canBeSourcedAt(port: NetworkPortView, position: Point): Boolean {
        return if (!portBounds.contains(position) || dNDBounds.contains(position)) {
            false
        } else super.canBeSourcedAt(port, position)
    }

    override fun canBeTargetedAt(port: NetworkPortView, position: Point): Boolean {
        return if (!portBounds.contains(position) || dNDBounds.contains(position)) {
            false
        } else super.canBeTargetedAt(port, position)
    }

    private val portBounds: Rectangle
        get() = translateRectangle(portCell.portBounds, portCell.position)
    private val dNDBounds: Rectangle
        get() = translateRectangle(portCell.dNDBounds, portCell.position)

    private fun translateRectangle(rectangle: Rectangle, position: Point?): Rectangle {
        rectangle.translate(position!!.x, position.y)
        return rectangle
    }

    private fun translatePoint(point: Point, position: Point): Point {
        point.translate(position.x, position.y)
        return point
    }

    init {
        portCell = EndpointPortCell(context, isEditable, isSource, view)
    }
}