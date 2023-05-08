package org.fbme.ide.richediting.adapters.ecc

import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import java.awt.Point
import java.awt.Rectangle

interface ECTransitionConditionCellHandle {
    val cell: EditorCell_Basic
    val idEditable: Boolean
    fun getBounds(position: Point): Rectangle
}
