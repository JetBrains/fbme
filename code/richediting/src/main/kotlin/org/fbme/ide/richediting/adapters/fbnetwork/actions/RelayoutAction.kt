package org.fbme.ide.richediting.adapters.fbnetwork.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.fbnetwork.elk.ELKLayoutProvider
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes

class RelayoutAction(cell: EditorCell) {
    private val layoutProvider: ELKLayoutProvider
    fun apply() {
        layoutProvider.relayout()
    }

    init {
        val style = cell.style
        val diagramFacility = style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY)
        val componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY)
        val connectionsFacility = style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY)
        val viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT)
        layoutProvider = ELKLayoutProvider(diagramFacility, componentsFacility, connectionsFacility, viewpoint)
    }
}