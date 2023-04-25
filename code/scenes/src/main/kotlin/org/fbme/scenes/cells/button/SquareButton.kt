package org.fbme.scenes.cells.button

import com.intellij.openapi.rd.fill2DRect
import com.intellij.ui.JBColor
import java.awt.Color
import java.awt.Graphics2D
import java.awt.Rectangle

abstract class SquareButton(private val size: Int) : Button {
    override val height: Int
        get() = size
    override val width: Int
        get() = size

    override fun paint(g: Graphics2D, x: Int, y: Int) {
        g.fill2DRect(Rectangle(x, y, size, size), Color.WHITE)
        paintInside(g, x, y)
    }

    protected abstract fun paintInside(g: Graphics2D, x: Int, y: Int)

    companion object {
        const val INNER_PADDING: Int = 2
    }
}