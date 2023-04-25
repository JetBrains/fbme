package org.fbme.scenes.cells.button

import com.intellij.ui.JBColor
import java.awt.Graphics2D

class MinusButton(size: Int): SquareButton(size) {
    override fun paintInside(g: Graphics2D, x: Int, y: Int) {
        g.color = JBColor.BLACK
        g.drawLine(x + INNER_PADDING, y + height / 2, x + width - INNER_PADDING, y + height / 2)
    }
}