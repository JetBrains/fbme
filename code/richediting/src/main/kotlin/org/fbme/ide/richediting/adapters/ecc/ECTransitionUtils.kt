package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.scenes.controllers.components.ComponentsFacility
import java.awt.Graphics
import java.awt.Point
import java.awt.Rectangle
import java.awt.geom.QuadCurve2D
import java.util.function.BiConsumer
import java.util.function.BiFunction

object ECTransitionUtils {
    @JvmField
    val PATH_FACTORY = BiFunction { source: Point, target: Point ->
        ECTransitionPath(
            source,
            Point((source.x + target.x) / 2, (source.y + target.y) / 2),
            target
        )
    }

    @JvmField
    val PATH_PAINTER = BiConsumer { g: Graphics, path: ECTransitionPath ->
        ECTransitionPathPainter.setupRegularPathPaint(g)
        ECTransitionPathPainter(path, null).paint(g, true)
    }

    @JvmStatic
    fun fromPath(s: Point, t: Point, cx: Double, cy: Double): QuadCurve2D.Double {
        val x = 2 * cx - 0.5 * s.x - 0.5 * t.x
        val y = 2 * cy - 0.5 * s.y - 0.5 * t.y
        return QuadCurve2D.Double(s.x.toDouble(), s.y.toDouble(), x, y, t.x.toDouble(), t.y.toDouble())
    }

    @JvmStatic
    fun getPointFromParameter(t: Double, curve: QuadCurve2D): Point {
        val result = Point(0, 0)
        result.x = ((1.0 - t) * (1.0 - t) * curve.x1 + 2 * (1 - t) * t * curve.ctrlX + t * t * curve.x2).toInt()
        result.y = ((1.0 - t) * (1.0 - t) * curve.y1 + 2 * (1 - t) * t * curve.ctrlY + t * t * curve.y2).toInt()
        return result
    }

    @JvmStatic
    fun getBoundsFromDeclaration(
        declaration: StateDeclaration,
        componentsFacility: ComponentsFacility<StateDeclaration, Point>
    ): Rectangle {
        val ps = componentsFacility.getModelForm(declaration) // крайний левый угол
        return componentsFacility.getController(declaration).getBounds(ps)
    }

    @JvmStatic
    fun crossBound(from: Point, to: Point, rec: Rectangle): Point {
        val a = Point(rec.x, rec.y)
        val b = Point(rec.x + rec.width, rec.y)
        val c = Point(rec.x + rec.width, rec.y + rec.height)
        val d = Point(rec.x, rec.y + rec.height)
        if (from.x == to.x) {
            return if (from.y < a.y && a.y < to.y) {
                Point(from.x, a.y)
            } else {
                Point(from.x, c.y)
            }
        } else if (from.y == to.y) {
            return if (from.x < a.x && a.x < to.x) {
                Point(a.x, from.y)
            } else {
                Point(b.x, from.y)
            }
        } else {
            val k = (from.y - to.y) / (from.x - to.x).toDouble()
            val constant = from.y - k * from.x
            val top_x = (a.y - constant) / k
            if (top_x > a.x && top_x < b.x && // проверка, что прямая действительно пересекается
                from.y < a.y && a.y < to.y
            ) { // проверка, что ближе это
                return Point(top_x.toInt(), a.y)
            }
            val right_y = k * b.x + constant
            if (right_y > b.y && right_y < c.y &&
                to.x < b.x && b.x < from.x
            ) {
                return Point(b.x, right_y.toInt())
            }
            val bottom_x = (c.y - constant) / k
            if (bottom_x > d.x && bottom_x < c.x &&
                to.y < d.y && d.y < from.y
            ) {
                return Point(bottom_x.toInt(), c.y)
            }
            val left_y = k * a.x + constant
            if (left_y > a.y && left_y < d.y &&
                from.x < a.x && a.x < to.x
            ) {
                return Point(a.x, left_y.toInt())
            }
        }
        return to
    }
}
