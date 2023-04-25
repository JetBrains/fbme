package org.fbme.scenes.cells.button

import java.awt.Graphics2D

interface Button {
    val height: Int
    val width: Int
    fun paint(g: Graphics2D, x: Int, y: Int)
}