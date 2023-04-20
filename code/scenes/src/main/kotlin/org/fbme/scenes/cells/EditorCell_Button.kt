package org.fbme.scenes.cells

import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.*
import jetbrains.mps.openapi.editor.EditorContext
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.geom.Ellipse2D

class EditorCell_Button(
        context: EditorContext,
        node: SNode?,
): EditorCell_Basic(context, node) {
    override fun paintContent(g: Graphics, p1: ParentSettings) {
        val graphics = g.create() as Graphics2D
        graphics.paint = MPSColors.white
        graphics.fill(Ellipse2D.Double(myX.toDouble(), myY.toDouble(), DIAMETER, DIAMETER))
    }

    init {
        myWidth = DIAMETER.toInt()
        myHeight = DIAMETER.toInt()
    }

    companion object {
        const val OX_OFFSET = 5
        const val OY_OFFSET = -5
        const val DIAMETER = 15.0
    }
}