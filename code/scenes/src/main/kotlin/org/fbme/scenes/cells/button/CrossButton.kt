package org.fbme.scenes.cells.button

import com.intellij.ui.JBColor
import java.awt.Color
import java.awt.Graphics2D
import java.awt.geom.RoundRectangle2D

class CrossButton(private val size: Int): Button {
    override val height: Int
        get() = size
    override val width: Int
        get() = size

    override fun paint(g: Graphics2D, x: Int, y: Int) {
        g.color = JBColor.WHITE
        g.fill(RoundRectangle2D.Double(x.toDouble(), y.toDouble(), size.toDouble(), size.toDouble(), (size / 4).toDouble(), (size / 4).toDouble()))
        drawCross(g, x + 3, y + 3, size - 6)
    }

    private fun drawCross(g: Graphics2D, x: Int, y: Int, size: Int) {
        g.color = Color.WHITE
        g.drawLine(x, y, x + size, y + size)
        g.drawLine(x, y + size, x + size, y)
    }
}