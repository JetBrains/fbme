package org.fbme.debugger.explanation.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.debugger.common.actions.Action
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes

class ExplainAction(cell: EditorCell) : Action {
    init {
        val style = cell.style
        val fb = style.get(RichEditorStyleAttributes.FB)
        val port = style.get(RichEditorStyleAttributes.PORT)
        TODO("Not yet implemented")
    }

    override fun apply() {
        TODO("Not yet implemented")
    }
}