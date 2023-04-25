package org.fbme.scenes.cells.button

import com.intellij.ui.JBColor
import java.awt.Color
import java.awt.Graphics2D
import java.awt.geom.RoundRectangle2D

class EditButton(private val size: Int): Button {
    override val height: Int
        get() = size
    override val width: Int
        get() = size

    override fun paint(g: Graphics2D, x: Int, y: Int) {
        g.color = JBColor.WHITE
        g.fill(RoundRectangle2D.Double(x.toDouble(), y.toDouble(), size.toDouble(), size.toDouble(), (size / 4).toDouble(), (size / 4).toDouble()))
        paintPen(g, x + 3, y + 3, size - 6)
    }

    private fun paintPen(g: Graphics2D, x: Int, y: Int, size: Int) {
        g.color = Color.WHITE
        g.drawLine(x, y + size, x + 2 * size / 5, y + size) //-
        g.drawLine(x, y + size, x, y + 3  * size / 5) // |
        g.drawLine(x, y + 3 * size / 5, x + 2 * size / 5, y + size)// |_\
        g.drawLine(x + 2 * size / 5, y + size, x + size, y + size / 5) // /
        g.drawLine(x, y + 3 * size / 5, x + 4 * size / 5, y) // //
        g.drawLine(x + size, y + size / 5, x + 4 * size / 5, y)
    }
}