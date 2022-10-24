package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView
import org.fbme.ide.richediting.viewmodel.InlineValueView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.scenes.controllers.components.ComponentExtController
import java.awt.Dimension
import java.awt.Graphics
import java.awt.Point
import java.awt.Rectangle

class InlineValueController(
    context: EditorContext,
    private val myView: InlineValueView,
    private val myComponentController: FunctionBlockController,
    valueCell: EditorCell
) : ComponentExtController<Point>, FBNetworkComponentController {
    override val componentCell: EditorCell
    private val myOpposite: FunctionBlockPortView = myView.opposite

    override fun getPortCoordinates(port: NetworkPortView, position: Point): Point {
        assertSelf(port)
        return getCoordinates(position)
    }

    override fun getPortBounds(port: NetworkPortView, position: Point): Rectangle {
        assertSelf(port)
        return getBounds(position)
    }

    fun getCoordinates(position: Point): Point {
        val oppositePortCoordinates = myComponentController.getPortCoordinates(myOpposite, position)
        return Point(oppositePortCoordinates.x - OPPOSITE_PORT_PADDING, oppositePortCoordinates.y)
    }

    override fun getBounds(position: Point): Rectangle {
        val oppositePortCoordinates = myComponentController.getPortCoordinates(myOpposite, position)
        val anchor = Point(
            oppositePortCoordinates.x - OPPOSITE_PORT_PADDING - 2 * INNER_BORDER_PADDING - componentCell.width,
            oppositePortCoordinates.y - componentCell.height / 2
        )
        return Rectangle(anchor, dimension)
    }

    override fun isSource(port: NetworkPortView): Boolean {
        return true
    }

    private fun assertSelf(port: NetworkPortView) {
        require(port == myView) { "invalid port" }
    }

    override fun updateCellWithForm(form: Point) {
        val oppositePortCoordinates = myComponentController.getPortCoordinates(myOpposite, form)
        componentCell.moveTo(
            oppositePortCoordinates.x - OPPOSITE_PORT_PADDING - INNER_BORDER_PADDING - componentCell.width,
            oppositePortCoordinates.y - componentCell.height / 2
        )
        componentCell.relayout()
    }

    override fun updateCellSelection(selected: Boolean) {
        // do nothing
    }

    override fun paintTrace(g: Graphics, form: Point) {
        // do nothing
    }

    private val dimension: Dimension
        get() = Dimension(2 * INNER_BORDER_PADDING + componentCell.width, componentCell.height)

    override fun canBeSourcedAt(port: NetworkPortView, position: Point): Boolean {
        return false
    }

    companion object {
        const val OPPOSITE_PORT_PADDING = 20
        const val INNER_BORDER_PADDING = 2
    }

    init {
        componentCell = valueCell
    }
}
