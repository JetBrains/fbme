package org.fbme.ide.richediting.adapters.ecc

import jetbrains.mps.nodeEditor.MPSColors
import java.awt.BasicStroke
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.Point
import java.awt.geom.AffineTransform
import java.awt.geom.Arc2D
import java.awt.geom.GeneralPath
import java.awt.geom.QuadCurve2D
import kotlin.math.abs
import kotlin.math.atan2
import kotlin.math.sqrt

class ECTransitionPathPainter(private val path: ECTransitionPath, private val cursor: ECTransitionCursor?) {
    fun paint(graphics: Graphics, drawArrow: Boolean) {
        val g = graphics as Graphics2D
        val s = path.source
        val t = path.target
        val c = path.centre
        g.stroke = BasicStroke(2.5.toFloat())

        // от такого надо избавляться, иначе координата поедет
        if (!(s == t && s == c)) {
            if (s == t) {
                val cx1 = (c.x + s.x) / 2.0 - 30
                val cy1 = (c.y + s.y) / 2.0 - 30
                g.draw(ECTransitionUtils.fromPath(s, c, cx1, cy1))
                val cx2 = (c.x + s.x) / 2.0 + 30
                val cy2 = (c.y + s.y) / 2.0 + 30
                val curve: QuadCurve2D = ECTransitionUtils.fromPath(c, t, cx2, cy2)
                g.draw(ECTransitionUtils.fromPath(s, c, cx2, cy2))
                val sat = AffineTransform()
                var parameter = 0.6
                val arrowPoint = ECTransitionUtils.getPointFromParameter(parameter, curve)
                parameter += 0.01
                var arrowPoint2 = ECTransitionUtils.getPointFromParameter(parameter, curve)
                while (findDistance(arrowPoint, arrowPoint2) < 10) {
                    parameter += 0.01
                    arrowPoint2 = ECTransitionUtils.getPointFromParameter(parameter, curve)
                }
                sat.translate(arrowPoint.x.toDouble(), arrowPoint.y.toDouble())
                sat.rotate((arrowPoint2.x - arrowPoint.x).toDouble(), (arrowPoint2.y - arrowPoint.y).toDouble())
                graphics.fill(ARROW_SHAPE.createTransformedShape(sat))
            } else {
                val curve: QuadCurve2D = ECTransitionUtils.fromPath(s, t, c.x.toDouble(), c.y.toDouble())
                g.draw(curve)
                val hoverGraphics = graphics.create() as Graphics2D
                hoverGraphics.color = MPSColors.YELLOW.darker()
                if (cursor == ECTransitionCursor.SOURCE || cursor == ECTransitionCursor.TARGET) {
                    hoverGraphics.draw(curve)
                }
                val sat = AffineTransform()
                var parameter = 0.96
                var arrowPoint = ECTransitionUtils.getPointFromParameter(parameter, curve)
                while (parameter < 0.995 && findDistance(arrowPoint, t) > 30) {
                    parameter += 0.005
                    arrowPoint = ECTransitionUtils.getPointFromParameter(parameter, curve)
                }
                while (parameter > 0.5 && findDistance(arrowPoint, t) < 15) {
                    parameter -= 0.01
                    arrowPoint = ECTransitionUtils.getPointFromParameter(parameter, curve)
                }
                sat.translate(arrowPoint.x.toDouble(), arrowPoint.y.toDouble())
                sat.rotate((t.x - arrowPoint.x).toDouble(), (t.y - arrowPoint.y).toDouble())
                graphics.fill(createArrow(findDistance(arrowPoint, t)).createTransformedShape(sat))

                // или тут можно так:
//                drawEdgesFromCircle(graphics, g, s, c, t);
            }
        }
    }

    companion object {
        private const val HOVER_SIZE = ECTransitionController.HOVER_SIZE

        @JvmStatic
        fun setupHighlightPathPaint(graphics: Graphics) {
            (graphics as Graphics2D).stroke = BasicStroke(4f)
        }

        @JvmStatic
        fun setupSelectedPathPaint(graphics: Graphics) {
            (graphics as Graphics2D).stroke = BasicStroke(2.5f)
        }

        @JvmStatic
        fun setupRegularPathPaint(graphics: Graphics) {
            (graphics as Graphics2D).stroke = BasicStroke(1.5f)
        }

        @JvmStatic
        fun setupShadowPathPaint(graphics: Graphics) {
            (graphics as Graphics2D).stroke =
                BasicStroke(1f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3F, floatArrayOf(3f), 3F)
        }

        private val ARROW_SHAPE = GeneralPath()
        private fun createArrow(s: Double): GeneralPath {
            val shape = GeneralPath()
            shape.moveTo(0f, -5f)
            shape.lineTo(s, 0.0)
            shape.lineTo(0f, 5f)
            shape.closePath()
            return shape
        }

        // знаем, что k1 != k2
        private fun findCenter(x1: Point, x2: Point, x3: Point): Point {
            // уравнение прямой1 x = const
            if (x1.x == x2.x) {
                val y1 = (x1.y + x2.y) / 2.0 // уравнение перпендикуляра к прямой1
                // y2 = kx + b или y = const, x = const быть не может, так как k1 != k2
                return if (x2.y == x3.y) {
                    val x_const_2 = (x2.x + x3.x) / 2.0
                    Point(x_const_2.toInt(), y1.toInt())
                } else {
                    val k = -1 / ((x3.y - x2.y) / ((x3.x - x2.x) * 1.0)) // k для перпендикуляра
                    val mx = (x2.x + x3.x) / 2.0
                    val my = (x2.y + x3.y) / 2.0
                    val b = my - k * mx
                    Point(((y1 - b) / k).toInt(), y1.toInt())
                }
            }
            // уравнение прямой1 y = const
            if (x1.y == x2.y) {
                val x1_const = (x1.x + x2.x) / 2.0 // перпендикуляр к прямой1
                // прямая2 либо y2 = kx + b, либо y = const
                return if (x2.x == x3.x) {
                    val y_const_2 = (x2.y + x3.y) / 2.0
                    Point(x1_const.toInt(), y_const_2.toInt())
                } else {
                    val k = -1 / ((x3.y - x2.y) / ((x3.x - x2.x) * 1.0)) // k для перпендикуляра
                    val mx = (x2.x + x3.x) / 2.0
                    val my = (x2.y + x3.y) / 2.0
                    val b = my - k * mx
                    Point(x1_const.toInt(), (k * x1_const + b) as Int)
                }
            }
            // уравнение прямой2 x = const
            if (x2.x == x3.x) {
                val y2 = abs(x2.y + x3.y) / 2.0
                // y1 = kx1 + b
                val k = -1 / ((x1.y - x2.y) / ((x1.x - x2.x) * 1.0))
                val mx = (x1.x + x2.x) / 2.0
                val my = (x1.y + x2.y) / 2.0
                val b = my - k * mx
                return Point(((y2 - b) / k).toInt(), y2.toInt())
            }
            // уравнение прямой2 y = const
            if (x2.y == x3.y) {
                val x2_const = abs(x2.x + x3.x) / 2.0
                // y1 = kx1 + b
                val k = -1 / ((x1.y - x2.y) / ((x1.x - x2.x) * 1.0))
                val mx = (x1.x + x2.x) / 2.0
                val my = (x1.y + x2.y) / 2.0
                val b = my - k * mx
                return Point(x2_const.toInt(), (x2_const * k + b).toInt())
            }
            val k1 = -1 / ((x1.y - x2.y) / ((x1.x - x2.x) * 1.0))
            val mx1 = (x1.x + x2.x) / 2.0
            val my1 = (x1.y + x2.y) / 2.0
            val b1 = my1 - k1 * mx1
            val k2 = -((x3.x - x2.x) / ((x3.y - x2.y) * 1.0)) // k для перпендикуляра
            val mx2 = (x2.x + x3.x) / 2.0
            val my2 = (x2.y + x3.y) / 2.0
            val b2 = my2 - k2 * mx2
            val new_x = (b2 - b1) / (k1 - k2)
            return Point(new_x.toInt(), (k1 * new_x + b1) as Int)
        }

        init {
            ARROW_SHAPE.moveTo(0f, -5f)
            ARROW_SHAPE.lineTo(15f, 0f)
            ARROW_SHAPE.lineTo(0f, 5f)
            ARROW_SHAPE.closePath()
        }
    }

    private fun drawEdgesFromCircle(graphics: Graphics, g: Graphics2D, s: Point, c: Point, t: Point) {
        if ((s.y - c.y) * (c.x - t.x) == (c.y - t.y) * (s.x - c.x)) {
            graphics.drawLine(s.x, s.y, t.x, t.y)
            return
        }
        val center = findCenter(s, c, t)
        val r = findDistance(center, s).toInt()
        var startAng = Math.toDegrees(-atan2((s.y - center.y).toDouble(), (s.x - center.x).toDouble()))
        if (startAng < 0) {
            startAng += 360.0
        }
        var cAng = Math.toDegrees(-atan2((c.y - center.y).toDouble(), (c.x - center.x).toDouble()))
        if (cAng < 0) {
            cAng += 360.0
        }
        var finishAng = Math.toDegrees(-atan2((t.y - center.y).toDouble(), (t.x - center.x).toDouble()))
        if (finishAng < 0) {
            finishAng += 360.0
        }
        val arc1: Arc2D = Arc2D.Double(
            (center.x - r).toDouble(),
            (center.y - r).toDouble(),
            2.0 * r,
            2.0 * r,
            startAng,
            finishAng - startAng,
            Arc2D.OPEN
        )
        val arc2: Arc2D = Arc2D.Double(
            (center.x - r).toDouble(),
            (center.y - r).toDouble(),
            2.0 * r,
            2.0 * r,
            finishAng,
            startAng - finishAng,
            Arc2D.OPEN
        )

        // TODO: не всегда верно определяется нужная дуга
        if (arc1.intersects((c.x - 5).toDouble(), (c.y - 5).toDouble(), 10.0, 10.0)) {
            g.draw(arc1)
        } else {
            g.draw(arc2)
        }
    }

    private fun findDistance(x1: Point?, x2: Point?): Double {
        return sqrt(((x1!!.x - x2!!.x) * (x1.x - x2.x) + (x1.y - x2.y) * (x1.y - x2.y)).toDouble())
    }
}
