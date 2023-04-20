package org.fbme.scenes.controllers

import java.awt.Rectangle

interface LayoutSetting {
    val bounds: Rectangle
    fun canStartMoveAt(x: Int, y: Int): Boolean
    fun moveTo(x: Int, y: Int)
}
