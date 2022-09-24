package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import java.awt.Graphics2D
import java.awt.Point
import java.awt.Rectangle

interface PortCell {
    val position: Point
    val width: Int
    val height: Int
    fun paintTrace(g: Graphics2D, x: Int, y: Int)
    fun relayout()
    val portCoordinate: Point
    val portPosition: Point
    val portBounds: Rectangle
    val dNDBounds: Rectangle
    val rootCell: EditorCell_Collection
}
