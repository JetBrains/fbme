package org.fbme.scenes.cells.button

import java.awt.Color
import java.awt.Graphics2D
import java.awt.geom.RoundRectangle2D

class TickButton(private val size: Int): Button {
    override val height: Int
        get() = size
    override val width: Int
        get() = size

    override fun paint(g: Graphics2D, x: Int, y: Int, isDark: Boolean) {
        val color = if (isDark) ON_DARK_COLOR else ON_LIGHT_COLOR
        g.color = color
        g.draw(RoundRectangle2D.Double(x.toDouble(), y.toDouble(), size.toDouble(), size.toDouble(), (size / 4).toDouble(), (size / 4).toDouble()))
        drawCross(g, x + 3, y + 3, size - 6, color)
    }

    private fun drawCross(g: Graphics2D, x: Int, y: Int, size: Int, color: Color) {
        g.color = color
        g.drawLine(x, y + 2 * size / 3, x + size / 3, y + size)
        g.drawLine(x  + size / 3, y + size, x + size, y)
    }

    companion object {
        val ON_DARK_COLOR = Color.WHITE
        val ON_LIGHT_COLOR = Color.BLACK
    }
}