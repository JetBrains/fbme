package org.fbme.ide.richediting.adapters.ecc.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.ecc.ECTransitionCursor
import org.fbme.ide.richediting.adapters.ecc.ECTransitionPath
import org.fbme.ide.richediting.adapters.ecc.elk.ELKLayoutProvider
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramFacility
import java.awt.Point

class RelayoutECCAction(cell: EditorCell) {
    private val layoutProvider: ELKLayoutProvider

    init {
        val style = cell.style
        layoutProvider = ELKLayoutProvider(
            style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY) as DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point>,
            style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY) as ComponentsFacility<StateDeclaration, Point>,
            style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY) as ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath>,
            style.get(RichEditorStyleAttributes.VIEWPOINT)
        )
    }

    fun apply() {
        layoutProvider.relayout()
    }
}
