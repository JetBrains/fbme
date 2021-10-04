package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.nodeEditor.MPSColors
import java.awt.BasicStroke
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.Point
import kotlin.math.max
import kotlin.math.min

class FBConnectionPathPainter(
    private val myPath: FBConnectionPath,
    private val myCursor: FBConnectionCursor?,
    private val myHoverLength: Int
) {
    private fun drawCorner(graphics: Graphics, x1: Int, y1: Int, x2: Int, y2: Int) {
        var diffx = Math.abs(x1 - x2)
        var diffy = Math.abs(y1 - y2)
        if (diffx < DL && diffy < DL) {
            graphics.drawLine(x1, y1, x2, y2)
            return
        }
        if (diffx < DL) {
            val diff = if (y1 < y2) diffx else -diffx
            graphics.drawLine(x1, y1, x2, y1 + diff)
            graphics.drawLine(x2, y1 + diff, x2, y2)
            return
        }
        if (diffy < DL) {
            val diff = if (x1 < x2) diffy else -diffy
            graphics.drawLine(x1, y1, x2 - diff, y1)
            graphics.drawLine(x2 - diff, y1, x2, y2)
            return
        }
        diffy = if (y1 < y2) DL else -DL
        diffx = if (x1 < x2) DL else -DL
        graphics.drawLine(x1, y1, x2 - diffx, y1)
        graphics.drawLine(x2 - diffx, y1, x2, y1 + diffy)
        graphics.drawLine(x2, y1 + diffy, x2, y2)
    }

    private fun drawCorner(
        graphics: Graphics,
        x1: Int,
        y1: Int,
        x2: Int,
        y2: Int,
        horizontalFisrt: Boolean,
        selected: Boolean
    ) {
        if (horizontalFisrt) {
            drawCorner(graphics, x1, y1, x2, y2)
            if (selected) {
                drawPoint(
                    graphics,
                    x2 + (if (x1 - x2 > 0) 1 else -1) * DL / 2,
                    y1 - (if (y1 - y2 > 0) 1 else -1) * DL / 2
                )
            }
        } else {
            drawCorner(graphics, x2, y2, x1, y1)
            if (selected) {
                drawPoint(
                    graphics,
                    x1 - (if (x1 - x2 > 0) 1 else -1) * DL / 2,
                    y2 + (if (y1 - y2 > 0) 1 else -1) * DL / 2
                )
            }
        }
    }

    private fun drawPoint(graphics: Graphics, x2: Int, y2: Int) {
        val circleGraphics = graphics.create()
        (circleGraphics as Graphics2D).stroke = BasicStroke(1.0f)
        circleGraphics.setColor(MPSColors.GREEN)
        circleGraphics.fillArc(x2 - 2, y2 - 2, 5, 5, 0, 360)
        circleGraphics.setColor(MPSColors.DARK_GREEN)
        circleGraphics.drawArc(x2 - 2, y2 - 2, 5, 5, 0, 360)
        circleGraphics.dispose()
    }

    fun paint(graphics: Graphics, selected: Boolean) {
        val s = myPath.sourcePosition
        val t = myPath.targetPosition
        val bendPoints = myPath.bendPoints
        if (bendPoints.isEmpty()) {
            graphics.drawLine(s.x, s.y, t.x, t.y)
        } else {
            var x1 = s.x
            var y1 = s.y
            var x2 = (bendPoints[0].x + bendPoints[1].x) / 2
            var y2 = (bendPoints[0].y + bendPoints[1].y) / 2
            drawCorner(graphics, x1, y1, x2, y2, true, selected)
            for (i in 2 until bendPoints.size) {
                x1 = x2
                y1 = y2
                x2 = (bendPoints[i - 1].x + bendPoints[i].x) / 2
                y2 = (bendPoints[i - 1].y + bendPoints[i].y) / 2
                drawCorner(graphics, x1, y1, x2, y2, i % 2 != 0, selected)
            }
            x1 = x2
            y1 = y2
            x2 = t.x
            y2 = t.y
            drawCorner(graphics, x1, y1, x2, y2, false, selected)
        }
        val hoverGraphics = graphics.create()
        hoverGraphics.color = MPSColors.YELLOW.darker()
        if (myCursor == FBConnectionCursor.SOURCE_ENDPOINT) {
            val xHover = getSourceHover(s, t, bendPoints)
            hoverGraphics.drawLine(s.x, s.y, xHover, s.y)
        }
        if (myCursor == FBConnectionCursor.TARGET_ENDPOINT) {
            val xHover = getTargetHover(s, t, bendPoints)
            hoverGraphics.drawLine(t.x, t.y, xHover, t.y)
        }
    }

    private fun getSourceHover(s: Point, t: Point, bendPoints: List<Point?>?): Int {
        return min(s.x + myHoverLength, if (bendPoints!!.isEmpty()) (s.x + t.x) / 2 else bendPoints[0]!!.x)
    }

    private fun getTargetHover(s: Point, t: Point, bendPoints: List<Point?>?): Int {
        return max(
            t.x - myHoverLength,
            if (bendPoints!!.isEmpty()) (s.x + t.x) / 2 else bendPoints[bendPoints.size - 1]!!.x
        )
    }

    companion object {
        private const val DL = 8

        @JvmStatic
        fun setupSelectedPathPaint(graphics: Graphics, scale: Float) {
            var validScale = scale
            if (validScale < 1f) {
                validScale = 1f
            }
            (graphics as Graphics2D).stroke = BasicStroke(2.5f * validScale)
        }

        @JvmStatic
        fun setupHighlightPathPaint(graphics: Graphics, scale: Float) {
            var validScale = scale
            if (validScale < 1f) {
                validScale = 1f
            }
            (graphics as Graphics2D).stroke = BasicStroke(4f * validScale)
        }

        @JvmStatic
        fun setupRegularPathPaint(graphics: Graphics, scale: Float) {
            var validScale = scale
            if (validScale < 1f) {
                validScale = 1f
            }
            (graphics as Graphics2D).stroke = BasicStroke(1.5f * validScale)
        }

        @JvmStatic
        fun setupShadowPathPaint(graphics: Graphics, scale: Float) {
            var validScale = scale
            if (validScale < 1f) {
                validScale = 1f
            }
            (graphics as Graphics2D).stroke =
                BasicStroke(1f * validScale, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3F, floatArrayOf(3f), 3F)
        }
    }
}