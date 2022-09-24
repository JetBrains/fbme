package org.fbme.scenes.cells

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.nodeEditor.cells.TextLine
import jetbrains.mps.openapi.editor.EditorContext
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Color
import java.awt.Graphics

class EditorCell_SceneLabel(
    context: EditorContext,
    node: SNode?,
    text: String?,
    error: Boolean
) : EditorCell_Basic(context, node) {
    private val textLine: TextLine
    override fun relayoutImpl() {
        textLine.relayout()
        myWidth = textLine.width
        myHeight = textLine.height
    }

    override fun setSelected(selected: Boolean) {
        super.setSelected(selected)
        style.set(StyleAttributes.UNDERLINED, selected)
    }

    override fun getDescent(): Int {
        return textLine.descent
    }

    override fun paintContent(graphics: Graphics, settings: ParentSettings) {
        textLine.paint(graphics, myX, myY)
    }

    override fun paintSelection(g: Graphics, c: Color, drawBorder: Boolean, parentSettings: ParentSettings) {
        // do noting
    }

    init {
        textLine = TextLine(text, style, false, editor.editorComponentSettings)
        if (error) {
            textLine.showErrorColor()
        }
    }
}
