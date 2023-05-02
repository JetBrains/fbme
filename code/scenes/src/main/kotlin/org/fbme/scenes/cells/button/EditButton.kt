package org.fbme.scenes.cells.button

import java.awt.Color
import java.awt.Graphics2D
import java.awt.geom.RoundRectangle2D

class EditButton(private val size: Int): Button {
    override val height: Int
        get() = size
    override val width: Int
        get() = size

    override fun paint(g: Graphics2D, x: Int, y: Int, isDark: Boolean) {
        val color = if (isDark) ON_DARK_COLOR else ON_LIGHT_COLOR
        g.color = color
        g.draw(RoundRectangle2D.Double(x.toDouble(), y.toDouble(), size.toDouble(), size.toDouble(), (size / 4).toDouble(), (size / 4).toDouble()))
        paintPen(g, x + 3, y + 3, size - 6, color)
    }

    private fun paintPen(g: Graphics2D, x: Int, y: Int, size: Int, color: Color) {
        g.color = color
        g.drawLine(x, y + size, x + 2 * size / 5, y + size) //-
        g.drawLine(x, y + size, x, y + 3  * size / 5) // |
        g.drawLine(x, y + 3 * size / 5, x + 2 * size / 5, y + size)// |_\
        g.drawLine(x + 2 * size / 5, y + size, x + size, y + size / 5) // /
        g.drawLine(x, y + 3 * size / 5, x + 4 * size / 5, y) // //
        g.drawLine(x + size, y + size / 5, x + 4 * size / 5, y)
    }

    companion object {
        val ON_DARK_COLOR = Color.WHITE
        val ON_LIGHT_COLOR = Color.BLACK
    }
}