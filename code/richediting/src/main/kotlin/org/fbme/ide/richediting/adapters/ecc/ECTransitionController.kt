package org.fbme.ide.richediting.adapters.ecc

import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.EditorCell
import org.fbme.scenes.controllers.diagram.ConnectionController
import java.awt.*
import java.util.function.BiFunction
import java.util.function.Function

class ECTransitionController(
    private val handle: ECTransitionConditionCellHandle,
    private val sourceHandle: ECStateCellHandle,
    private val targetHandle: ECStateCellHandle
) : ConnectionController<ECTransitionCursor, ECTransitionPath> {
    var highlightColor: Color? = null

    override val connectionCell: EditorCell
        get() = handle.cell

    val isEditable: Boolean = handle.idEditable

    init {
        connectionCell.isSelectable = isEditable
    }

    override fun getEdgeTransformation(path: ECTransitionPath, x: Int, y: Int): Function<Point, ECTransitionPath>? {
        return if (handle.getBounds(path.centre).contains(x, y)) {
            Function { p: Point ->
                val sourceBound = sourceHandle.bounds
                val targetBound = targetHandle.bounds
                val centre = Point(path.centre)
                centre.translate(p.x - x, p.y - y)
                val sp = Point(sourceBound.x + sourceBound.width / 2, sourceBound.y + sourceBound.height / 2)
                val tp = Point(targetBound.x + targetBound.width / 2, targetBound.y + targetBound.height / 2)
                val sourcePoint = ECTransitionUtils.crossBound(centre, sp, sourceBound)
                val targetPoint = ECTransitionUtils.crossBound(centre, tp, targetBound)
                ECTransitionPath(sourcePoint, centre, targetPoint)
            }
        } else null
    }

    override fun getSourceTransformation(path: ECTransitionPath): Function<Point, ECTransitionPath> {
        return Function { ns: Point -> transformSource(path, ns) }
    }

    override fun getTargetTransformation(path: ECTransitionPath): Function<Point, ECTransitionPath> {
        return Function { nt: Point -> transformTarget(path, nt) }
    }

    override fun getEndpointsTransformation(path: ECTransitionPath): BiFunction<Point, Point, ECTransitionPath> {
        return BiFunction { ns: Point, nt: Point -> transform(path, ns, nt) }
    }

    private fun transformSource(path: ECTransitionPath, ns: Point): ECTransitionPath {
        val sourceBound = sourceHandle.bounds
        val centre = Point(path.centre)
        val sp = Point(sourceBound.x + sourceBound.width / 2, sourceBound.y + sourceBound.height / 2)
        val dxSource = ns.x - sp.x
        val dySource = ns.y - sp.y
        sourceBound.translate(dxSource, dySource)
        val newSource = ECTransitionUtils.crossBound(centre, ns, sourceBound)
        return ECTransitionPath(newSource, centre, path.target)
    }

    private fun transformTarget(path: ECTransitionPath, nt: Point): ECTransitionPath {
        val targetBound = targetHandle.bounds
        val centre = Point(path.centre)
        val tp = Point(targetBound.x + targetBound.width / 2, targetBound.y + targetBound.height / 2)
        val dxTarget = nt.x - tp.x
        val dyTarget = nt.y - tp.y
        targetBound.translate(dxTarget, dyTarget)
        val newTarget = ECTransitionUtils.crossBound(centre, nt, targetBound)
        return ECTransitionPath(path.source, centre, newTarget)
    }

    private fun transform(path: ECTransitionPath, ns: Point, nt: Point): ECTransitionPath {
        val transformSourcePath = transformSource(path, ns)
        return transformTarget(transformSourcePath, nt)
    }

    override fun isSourceTransformableAt(path: ECTransitionPath, x: Int, y: Int): Boolean {
        if (!isEditable) return false
        val curve =
            ECTransitionUtils.fromPath(path.source, path.target, path.centre.x.toDouble(), path.centre.y.toDouble())
        return curve.intersects(boundary(x, y)) && boundary(path.source.x, path.source.y).intersects(boundary(x, y))
    }

    override fun isTargetTransformableAt(path: ECTransitionPath, x: Int, y: Int): Boolean {
        if (!isEditable) return false
        val curve =
            ECTransitionUtils.fromPath(path.source, path.target, path.centre.x.toDouble(), path.centre.y.toDouble())
        return curve.intersects(boundary(x, y)) && boundary(path.target.x, path.target.y).intersects(boundary(x, y))
    }

    private fun boundary(x: Int, y: Int): Rectangle {
        return Rectangle(x - 4, y - 4, 8, 8)
    }

    override fun isSelectableAt(path: ECTransitionPath, x: Int, y: Int): Boolean {
        if (!isEditable) {
            return false
        }
        return isSourceTransformableAt(path, x, y) || isTargetTransformableAt(path, x, y)
    }

    override fun updateCellWithPath(path: ECTransitionPath) {
        val x = path.centre.x
        val y = path.centre.y
        val cell = handle.cell
        cell.moveTo(x - cell.width / 2, y - cell.height / 2)
        cell.relayout()
    }

    override fun getCursorAt(path: ECTransitionPath, x: Int, y: Int): ECTransitionCursor? {
        if (isSourceTransformableAt(path, x, y)) {
            return ECTransitionCursor.SOURCE
        }
        return if (isTargetTransformableAt(path, x, y)) {
            ECTransitionCursor.TARGET
        } else null
    }

    override fun paintConnection(
        path: ECTransitionPath,
        cursor: ECTransitionCursor?,
        selected: Boolean,
        graphics: Graphics
    ) {
        val g = graphics.create()
        val painter = ECTransitionPathPainter(path, cursor)
        if (highlightColor != null) {
            ECTransitionPathPainter.setupHighlightPathPaint(g)
            g.color = highlightColor
            painter.paint(g, false)
        }
        g.color = MPSColors.GRAY
        if (selected) {
            ECTransitionPathPainter.setupSelectedPathPaint(g)
        } else {
            ECTransitionPathPainter.setupRegularPathPaint(g)
        }
        painter.paint(g, true)
        val bounds = Rectangle(handle.getBounds(path.centre))
        bounds.x -= 3
        bounds.width += 6
        graphics.color = MPSColors.WHITE
        (graphics as Graphics2D).fill(bounds)
        graphics.setColor(MPSColors.LIGHT_GRAY)
        graphics.draw(bounds)
    }

    override fun getBounds(path: ECTransitionPath): Rectangle {
        return handle.getBounds(path.centre)
    }

    override fun paintTrace(path: ECTransitionPath, graphics: Graphics) {
        var g = graphics
        g = g.create()
        ECTransitionPathPainter.setupShadowPathPaint(g)
        ECTransitionPathPainter(path, null).paint(g, false)
    }

    companion object {
        const val HOVER_SIZE = 0.2f
    }
}
