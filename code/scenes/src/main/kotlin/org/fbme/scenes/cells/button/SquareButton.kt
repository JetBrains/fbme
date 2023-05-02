package org.fbme.scenes.cells.button

import com.intellij.openapi.rd.fill2DRect
import jetbrains.mps.nodeEditor.MPSColors
import java.awt.Color
import java.awt.Graphics2D
import java.awt.Rectangle

abstract class SquareButton(private val size: Int) : Button {
    override val height: Int
        get() = size
    override val width: Int
        get() = size

    override fun paint(g: Graphics2D, x: Int, y: Int, isDark: Boolean) {
        g.fill2DRect(Rectangle(x, y, size, size), if (isDark) ON_DARK_COLOR else ON_LIGHT_COLOR)
        paintInside(g, x, y, if (!isDark) ON_DARK_COLOR else ON_LIGHT_COLOR)
    }

    protected abstract fun paintInside(g: Graphics2D, x: Int, y: Int, color: Color)

    companion object {
        const val INNER_PADDING: Int = 2
        val ON_DARK_COLOR = Color.WHITE
        val ON_LIGHT_COLOR = Color.BLACK
    }
}