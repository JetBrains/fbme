package org.fbme.scenes.cells.button

import java.awt.Component
import java.awt.Graphics2D
import javax.swing.Icon

abstract class IconButton(private val icon: () -> Icon) : Button {
    override val width: Int
        get() = icon().iconWidth
    override val height: Int
        get() = icon().iconHeight

    override fun paint(c: Component, g: Graphics2D, x: Int, y: Int) {
        icon().paintIcon(c, g, x, y)
    }

    override fun paintSelection(c: Component, g: Graphics2D, x: Int, y: Int) {
        icon().paintIcon(c, g, x, y)
    }
}