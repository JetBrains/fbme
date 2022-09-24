package org.fbme.scenes.controllers.components

import jetbrains.mps.nodeEditor.cells.EditorCell
import java.awt.Graphics

interface ComponentExtController<FormT> {
    val componentCell: EditorCell
    fun updateCellWithForm(form: FormT)
    fun updateCellSelection(selected: Boolean)
    fun paintTrace(g: Graphics, form: FormT)
}
