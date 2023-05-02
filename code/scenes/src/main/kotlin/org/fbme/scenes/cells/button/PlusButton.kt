package org.fbme.scenes.cells.button

import java.awt.Color
import java.awt.Graphics2D

class PlusButton(size: Int): SquareButton(size) {
    override fun paintInside(g: Graphics2D, x: Int, y: Int, color: Color) {
        g.color = color
        g.drawLine(x + width / 2, y + INNER_PADDING, x + width / 2, y + height - INNER_PADDING)
        g.drawLine(x + INNER_PADDING, y + height / 2, x + width - INNER_PADDING, y + height / 2)
    }
}