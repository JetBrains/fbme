package org.fbme.scenes.controllers.components

import jetbrains.mps.nodeEditor.cells.EditorCell
import java.awt.Graphics
import java.awt.Point
import java.awt.Rectangle
import java.util.function.Function

interface ComponentController<FormT> {
    fun getBounds(form: FormT): Rectangle
    fun canStartMoveAt(form: FormT, x: Int, y: Int): Boolean
    fun translateForm(originalForm: FormT, dx: Int, dy: Int): FormT
    fun transformFormAt(originalForm: FormT, x: Int, y: Int): Function<Point, FormT>
    val componentCell: EditorCell
    fun updateCellWithForm(form: FormT)
    fun updateCellSelection(selected: Boolean)
    fun paintTrace(g: Graphics?, form: FormT)
}
