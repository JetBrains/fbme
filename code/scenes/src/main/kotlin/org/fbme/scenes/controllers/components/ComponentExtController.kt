package org.fbme.scenes.controllers.components

import jetbrains.mps.nodeEditor.cells.EditorCell
import java.awt.Graphics
import java.awt.Point

interface ComponentExtController<FormT> {
    val componentCell: EditorCell
    fun getCoordinates(form: FormT): Point
    fun updateCellWithForm(form: FormT)
    fun updateCellSelection(selected: Boolean)
    fun paintTrace(g: Graphics, form: FormT)
}
