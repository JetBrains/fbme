package org.fbme.scenes.cells

import com.intellij.util.ui.StartupUiUtil
import jetbrains.mps.nodeEditor.cells.*
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
): EditorCell_Basic(context, node) {
    val isDark = StartupUiUtil.isUnderDarcula()

    override fun paintContent(g: Graphics, p1: ParentSettings) {
        button.paint(g.create() as Graphics2D, myX, myY, isDark)
    }

    override fun paintSelection(g: Graphics?, c: Color?, drawBorder: Boolean, parentSettings: ParentSettings?) {
        //do nothing
    }

    init {
        myWidth = button.width
        myHeight = button.height
    }

    companion object {
        const val OY_OFFSET = -5
    }
}
