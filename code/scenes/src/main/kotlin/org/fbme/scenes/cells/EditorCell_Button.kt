package org.fbme.scenes.cells

import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.scenes.cells.button.Button
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Color
import java.awt.Graphics
import java.awt.Graphics2D

class EditorCell_Button(
        context: EditorContext,
        node: SNode?,
        private val button: Button
) : EditorCell_Basic(context, node) {
    override fun paintContent(g: Graphics, p1: ParentSettings) {
        button.paint(this.editor, g.create() as Graphics2D, myX, myY)
    }

    override fun paintSelection(g: Graphics, c: Color?, drawBorder: Boolean, parentSettings: ParentSettings?) {
        button.paintSelection(this.editor, g.create() as Graphics2D, myX, myY)
    }

    init {
        myWidth = button.width
        myHeight = button.height
    }

    companion object {
        const val OY_OFFSET = -5
        const val DEFAULT_SIZE = 14
    }
}
