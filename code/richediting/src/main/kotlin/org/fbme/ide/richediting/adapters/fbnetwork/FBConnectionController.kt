package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.fbme.ide.richediting.adapters.fbnetwork.fb.DiagramColors
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.scenes.controllers.LayoutUtil.getFontSize
import org.fbme.scenes.controllers.diagram.ConnectionController
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Color
import java.awt.Graphics
import java.awt.Point
import java.awt.Rectangle
import java.util.function.BiFunction
import java.util.function.Function
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

class FBConnectionController(context: EditorContext, view: NetworkConnectionView) :
    ConnectionController<FBConnectionCursor, FBConnectionPath> {
    private val kind: EntryKind
    private val isEditable: Boolean
    private val fakeCell: EditorCell_Collection
    var highlightColor: Color? = null
    override val connectionCell: EditorCell
        get() = fakeCell

    override fun paintConnection(
        path: FBConnectionPath,
        cursor: FBConnectionCursor?,
        selected: Boolean,
        graphics: Graphics
    ) {
        var g = graphics
        g = g.create()
        val painter = FBConnectionPathPainter(path, cursor, scale(ENDPOINT_HOVER_LENGTH))
        if (highlightColor != null) {
            FBConnectionPathPainter.setupHighlightPathPaint(g, scale(1).toFloat())
            g.color = highlightColor
            painter.paint(g, false)
        }
        g.color = DiagramColors.getColorFor(kind, isEditable)
        if (selected) {
            FBConnectionPathPainter.setupSelectedPathPaint(g, scale(1).toFloat())
        } else {
            FBConnectionPathPainter.setupRegularPathPaint(g, scale(1).toFloat())
        }
        painter.paint(g, selected)
    }

    override fun paintTrace(path: FBConnectionPath, graphics: Graphics) {
        graphics.color = MPSColors.GRAY
        FBConnectionPathPainter.setupShadowPathPaint(graphics, scale(1).toFloat())
        FBConnectionPathPainter(path, null, scale(ENDPOINT_HOVER_LENGTH)).paint(graphics, false)
    }

    override fun getEdgeTransformation(path: FBConnectionPath, x: Int, y: Int): Function<Point, FBConnectionPath>? {
        if (!isEditable) {
            return null
        }
        val bendPoints = path.bendPoints
        for (i in 1 until bendPoints.size) {
            val u = bendPoints[i - 1]
            val v = bendPoints[i]
            val isHorizontal = i % 2 == 0
            if (hasIntersection(x, y, u, v, isHorizontal)) {
                return getPathSectionTransformation(path, i)
            }
        }
        return null
    }

    private fun hasIntersection(ex: Int, ey: Int, u: Point, v: Point, isHorizontal: Boolean): Boolean {
        return if (isHorizontal) hasHorizontalIntersection(ex, ey, u, v) else hasVerticalIntersection(ex, ey, u, v)
    }

    private fun hasVerticalIntersection(ex: Int, ey: Int, u: Point, v: Point): Boolean {
        return abs(ex - u.x) < scale(SELECTION_PADDING) && min(u.y, v.y) < ey && ey < max(u.y, v.y)
    }

    private fun hasHorizontalIntersection(ex: Int, ey: Int, u: Point, v: Point): Boolean {
        return abs(ey - u.y) < scale(SELECTION_PADDING) && min(u.x, v.x) < ex && ex < max(u.x, v.x)
    }

    private fun getPathSectionTransformation(path: FBConnectionPath, index: Int): Function<Point, FBConnectionPath> {
        val bendPoints = path.bendPoints
        val isHorizontal = index % 2 == 0
        return Function { eventPosition: Point ->
            val newBendPoints = deepCopy(bendPoints)
            val u = newBendPoints[index - 1]
            val v = newBendPoints[index]
            if (isHorizontal) {
                v.y = eventPosition.y
                u.y = v.y
            } else {
                v.x = eventPosition.x
                u.x = v.x
            }
            magnetize(index, newBendPoints)
            FBConnectionPath(
                path.sourcePosition,
                path.targetPosition,
                newBendPoints
            )
        }
    }

    private fun magnetized(path: FBConnectionPath): FBConnectionPath {
        val bendPoints = path.bendPoints
        if (bendPoints.isEmpty()) {
            return path
        }
        if (bendPoints.size == 2) {
            val u = bendPoints[0]
            val v = bendPoints[1]
            if (u.y == v.y) {
                return FBConnectionPath(path.sourcePosition, path.targetPosition)
            }
        }
        val newBendPoints = deepCopy(bendPoints)
        for (i in 1 until newBendPoints.size) {
            magnetize(i, newBendPoints)
        }
        return FBConnectionPath(
            path.sourcePosition,
            path.targetPosition,
            newBendPoints
        )
    }

    private fun magnetize(index: Int, bendPoints: MutableList<Point>) {
        val isHorizontal = index % 2 == 0
        if (isHorizontal) {
            magnetizeHorizontal(index, bendPoints)
        } else {
            magnetizeVertical(index, bendPoints)
        }
    }

    private fun magnetizeHorizontal(index: Int, bendPoints: MutableList<Point>) {
        if (index >= bendPoints.size) {
            return
        }
        val u = bendPoints[index - 1]
        val v = bendPoints[index]
        val uPrev = bendPoints[index - 2]
        val vNext = bendPoints[index + 1]
        if (abs(vNext.y - v.y) < scale(SELECTION_PADDING)) {
            u.y = vNext.y
            bendPoints.removeAt(index + 1)
            bendPoints.removeAt(index)
        }
        if (abs(u.y - uPrev.y) < scale(SELECTION_PADDING)) {
            v.y = uPrev.y
            bendPoints.removeAt(index - 1)
            bendPoints.removeAt(index - 2)
        }
    }

    private fun magnetizeVertical(index: Int, bendPoints: MutableList<Point>) {
        if (index >= bendPoints.size) {
            return
        }
        val u = bendPoints[index - 1]
        val v = bendPoints[index]
        val uPrev = if (index - 2 >= 0) bendPoints[index - 2] else null
        val vNext = if (index + 1 < bendPoints.size) bendPoints[index + 1] else null
        if (vNext != null && abs(vNext.x - v.x) < scale(SELECTION_PADDING)) {
            u.x = vNext.x
            bendPoints.removeAt(index + 1)
            bendPoints.removeAt(index)
        }
        if (uPrev != null && abs(u.x - uPrev.x) < scale(SELECTION_PADDING)) {
            v.x = uPrev.x
            bendPoints.removeAt(index - 1)
            bendPoints.removeAt(index - 2)
        }
    }

    override fun isSourceTransformableAt(path: FBConnectionPath, x: Int, y: Int): Boolean {
        return if (!isEditable) {
            false
        } else isOnSourceHoverArea(x, y, path)
    }

    override fun isTargetTransformableAt(path: FBConnectionPath, x: Int, y: Int): Boolean {
        return if (!isEditable) {
            false
        } else isOnTargetHoverArea(x, y, path)
    }

    override fun getSourceTransformation(path: FBConnectionPath): Function<Point, FBConnectionPath>? {
        return if (!isEditable) {
            null
        } else getConnectionSourceTransformation(path)
    }

    override fun getTargetTransformation(path: FBConnectionPath): Function<Point, FBConnectionPath>? {
        return if (!isEditable) {
            null
        } else getConnectionTargetTransformation(path)
    }

    override fun getEndpointsTransformation(path: FBConnectionPath): BiFunction<Point, Point, FBConnectionPath>? {
        if (!isEditable) {
            return null
        }
        val bendPoints = path.bendPoints
        return BiFunction { sourcePosition: Point, targetPosition: Point ->
            val originalSourcePosition = path.sourcePosition
            val dx = sourcePosition.x - originalSourcePosition.x
            val dy = sourcePosition.y - originalSourcePosition.y
            val newBendPoints: MutableList<Point> = ArrayList()
            for (bendPoint in bendPoints) {
                newBendPoints.add(Point(bendPoint.x + dx, bendPoint.y + dy))
            }
            FBConnectionPath(sourcePosition, targetPosition, newBendPoints)
        }
    }

    override fun isSelectableAt(path: FBConnectionPath, x: Int, y: Int): Boolean {
        val s = path.sourcePosition
        val t = path.targetPosition
        val bendPoints = path.bendPoints
        return if (bendPoints.isEmpty()) {
            hasHorizontalIntersection(x, y, s, t)
        } else {
            if (hasHorizontalIntersection(x, y, s, bendPoints[0])) {
                return true
            }
            for (i in 1 until bendPoints.size) {
                val u = bendPoints[i - 1]
                val v = bendPoints[i]
                val isHorizontal = i % 2 == 0
                if (hasIntersection(x, y, u, v, isHorizontal)) {
                    return true
                }
            }
            hasHorizontalIntersection(x, y, bendPoints[bendPoints.size - 1], t)
        }
    }

    override fun getCursorAt(path: FBConnectionPath, x: Int, y: Int): FBConnectionCursor? {
        if (!isEditable) {
            return null
        }
        if (isOnSourceHoverArea(x, y, path)) {
            return FBConnectionCursor.SOURCE_ENDPOINT
        } else if (isOnTargetHoverArea(x, y, path)) {
            return FBConnectionCursor.TARGET_ENDPOINT
        }
        return null
    }

    private fun isOnTargetHoverArea(ex: Int, ey: Int, path: FBConnectionPath): Boolean {
        val s = path.sourcePosition
        val t = path.targetPosition
        val bendPoints = path.bendPoints
        return hasHorizontalIntersection(ex, ey, Point(getTargetHover(s, t, bendPoints), t.y), t)
    }

    private fun isOnSourceHoverArea(ex: Int, ey: Int, path: FBConnectionPath): Boolean {
        val s = path.sourcePosition
        val t = path.targetPosition
        val bendPoints = path.bendPoints
        return hasHorizontalIntersection(ex, ey, s, Point(getSourceHover(s, t, bendPoints), s.y))
    }

    override fun getBounds(path: FBConnectionPath): Rectangle {
        val s = path.sourcePosition
        val t = path.targetPosition
        var xMin = min(s.x, t.x)
        var xMax = max(s.x, t.x)
        var yMin = min(s.y, t.y)
        var yMax = max(s.y, t.y)
        val bendPoints = path.bendPoints
        for (bendPoint in bendPoints) {
            xMin = min(xMin, bendPoint.x)
            xMax = max(xMax, bendPoint.x)
            yMin = min(yMin, bendPoint.y)
            yMax = max(yMax, bendPoint.y)
        }
        return Rectangle(xMin, yMin, xMax - xMin, yMax - yMin)
    }

    private fun getConnectionSourceTransformation(originalPath: FBConnectionPath): Function<Point, FBConnectionPath> {
        val calculator = PathSourceChangeDiffCalculator(originalPath)
        return Function { newSource: Point -> calculator.calculatePath(newSource) }
    }

    private fun getConnectionTargetTransformation(originalPath: FBConnectionPath): Function<Point, FBConnectionPath> {
        val calculator = PathTargetChangeDiffCalculator(originalPath)
        return Function { newTarget: Point -> calculator.calculatePath(newTarget) }
    }

    private inner class PathTargetChangeDiffCalculator(private val myOriginalPath: FBConnectionPath) {
        fun calculatePath(newTarget: Point): FBConnectionPath {
            val s = myOriginalPath.sourcePosition
            val t = myOriginalPath.targetPosition
            val ntx = newTarget.x
            val nty = newTarget.y
            var x1 = myOriginalPath.x1
            var y = myOriginalPath.y
            var x2 = myOriginalPath.x2
            var kind = myOriginalPath.pathKind
            if (kind == ConnectionPath.Kind.Straight) {
                x1 = (t.x + s.x) / 2
            }
            when (kind) {
                ConnectionPath.Kind.Straight, ConnectionPath.Kind.TwoAngles -> if (ntx >= s.x + 2 * scale(
                        ENDPOINTS_PADDING
                    )
                ) {
                    kind = ConnectionPath.Kind.TwoAngles
                    if (t.x != s.x) {
                        x1 = s.x + (ntx - s.x) * (x1 - s.x) / (t.x - s.x)
                    } else {
                        x2 = (s.x + ntx) / 2
                    }
                } else {
                    kind = ConnectionPath.Kind.FourAngles
                    x1 = s.x + scale(ENDPOINTS_PADDING)
                    x2 = ntx - scale(ENDPOINTS_PADDING)
                    y = (s.y + nty) / 2
                    if (y >= s.y && y - scale(ENDPOINTS_PADDING) < s.y) {
                        y = s.y + scale(ENDPOINTS_PADDING)
                    } else if (y < s.y && y + scale(ENDPOINTS_PADDING) > s.y) {
                        y = s.y - scale(ENDPOINTS_PADDING)
                    }
                }

                ConnectionPath.Kind.FourAngles, ConnectionPath.Kind.MoreThanFour -> if (ntx >= x1 + t.x - x2) {
                    kind = ConnectionPath.Kind.TwoAngles
                    x1 = if (t.x - x2 != x1 - s.x) {
                        s.x + (ntx - s.x) * (x1 - s.x) / (t.x - x2 + x1 - s.x)
                    } else {
                        ntx
                    }
                } else {
                    kind = ConnectionPath.Kind.FourAngles
                    x2 = ntx - (t.x - x2)
                }
            }
            val newConnectionPath = FBConnectionPath(s, newTarget, kind, x1, y, x2)
            return magnetized(newConnectionPath)
        }
    }

    inner class PathSourceChangeDiffCalculator(private val myOriginalPath: FBConnectionPath) {
        fun calculatePath(newSource: Point): FBConnectionPath {
            val s = myOriginalPath.sourcePosition
            val t = myOriginalPath.targetPosition
            val nsx = newSource.x
            val nsy = newSource.y
            var x1 = myOriginalPath.x1
            var y = myOriginalPath.y
            var x2 = myOriginalPath.x2
            var kind = myOriginalPath.pathKind
            if (kind == ConnectionPath.Kind.Straight) {
                x1 = (t.x + s.x) / 2
            }
            when (kind) {
                ConnectionPath.Kind.Straight, ConnectionPath.Kind.TwoAngles -> if (nsx <= t.x - 2 * scale(
                        ENDPOINTS_PADDING
                    )
                ) {
                    kind = ConnectionPath.Kind.TwoAngles
                    x1 = if (t.x != s.x) {
                        t.x - (t.x - nsx) * (t.x - x1) / (t.x - s.x)
                    } else {
                        (t.x + nsx) / 2
                    }
                } else {
                    kind = ConnectionPath.Kind.FourAngles
                    x1 = nsx + scale(ENDPOINTS_PADDING)
                    x2 = t.x - scale(ENDPOINTS_PADDING)
                    y = (t.y + nsy) / 2
                    if (y >= t.y && y - scale(ENDPOINTS_PADDING) < t.y) {
                        y = t.y + scale(ENDPOINTS_PADDING)
                    } else if (y < t.y && y + scale(ENDPOINTS_PADDING) > t.y) {
                        y = t.y - scale(ENDPOINTS_PADDING)
                    }
                }

                ConnectionPath.Kind.FourAngles, ConnectionPath.Kind.MoreThanFour -> if (nsx <= x2 + s.x - x1) {
                    kind = ConnectionPath.Kind.TwoAngles
                    x1 = if (t.x - s.x != x2 - x1) {
                        nsx + (t.x - nsx) * (x1 - s.x) / (t.x - x2 + x1 - s.x)
                    } else {
                        nsx
                    }
                } else {
                    kind = ConnectionPath.Kind.FourAngles
                    x1 = nsx + x1 - s.x
                }
            }
            val newConnectionPath = FBConnectionPath(newSource, t, kind, x1, y, x2)
            return magnetized(newConnectionPath)
        }
    }

    private val fontSize: Int
        get() = getFontSize(fakeCell.style)

    private fun scale(size: Int): Int {
        return size * fontSize / EditorSettings.getInstance().fontSize
    }

    private fun getTargetHover(s: Point, t: Point, bendPoints: List<Point?>?): Int {
        return max(
            t.x - scale(ENDPOINT_HOVER_LENGTH),
            if (bendPoints!!.isEmpty()) (s.x + t.x) / 2 else bendPoints[bendPoints.size - 1]!!.x
        )
    }

    private fun getSourceHover(s: Point, t: Point, bendPoints: MutableList<Point>): Int {
        return min(
            s.x + scale(ENDPOINT_HOVER_LENGTH),
            if (bendPoints.isEmpty()) (s.x + t.x) / 2 else bendPoints[0].x
        )
    }

    private object CONCEPTS {
        /*package*/
        @JvmField
        val `ConnectionPath$IA` = MetaAdapterFactory.getConcept(
            0x6594f3404d734027L,
            -0x482c3935d18f5ac5L,
            0x3bbd127730611f52L,
            "org.fbme.ide.iec61499.lang.structure.ConnectionPath"
        )
    }

    companion object {
        private const val SELECTION_PADDING = 4
        private const val ENDPOINT_HOVER_LENGTH = FBConnectionUtils.ENDPOINTS_PADDING
        private const val ENDPOINTS_PADDING = FBConnectionUtils.ENDPOINTS_PADDING

        @JvmStatic
        fun deepCopy(bendPoints: MutableList<Point>): MutableList<Point> {
            val newBendPoints: MutableList<Point> = ArrayList()
            for (bendPoint in bendPoints) {
                newBendPoints.add(Point(bendPoint.x, bendPoint.y))
            }
            return newBendPoints
        }
    }

    init {
        kind = view.kind
        isEditable = view.isEditable
        val associatedNode = view.associatedNode
        fakeCell = FakeCells.createCollection(context, associatedNode)
        val connectionPaths: Iterator<SNode> =
            SNodeOperations.ofConcept(SNodeOperations.getChildren(associatedNode), CONCEPTS.`ConnectionPath$IA`)
                .iterator()
        if (connectionPaths.hasNext()) {
            fakeCell.addEditorCell(FakeCells.create(context, connectionPaths.next()))
        }
    }
}
