package org.fbme.scenes.cells.button

import java.awt.Component
import java.awt.Graphics2D

interface Button {
    val width: Int
    val height: Int
    fun paint(c: Component, g: Graphics2D, x: Int, y: Int)
    fun paintSelection(c: Component, g: Graphics2D, x: Int, y: Int)
}
