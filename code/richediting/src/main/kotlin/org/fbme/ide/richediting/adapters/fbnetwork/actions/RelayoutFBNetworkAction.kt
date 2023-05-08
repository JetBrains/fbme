package org.fbme.ide.richediting.adapters.fbnetwork.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath
import org.fbme.ide.richediting.adapters.fbnetwork.elk.ELKLayoutProvider
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramFacility
import java.awt.Point

class RelayoutFBNetworkAction(cell: EditorCell) {
    private val layoutProvider: ELKLayoutProvider

    fun apply() {
        layoutProvider.relayout()
    }

    init {
        val style = cell.style
        layoutProvider = ELKLayoutProvider(
            style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY) as DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>,
            style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY) as ComponentsFacility<NetworkComponentView, Point>,
            style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY) as ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>,
            style.get(RichEditorStyleAttributes.INSPECTIONS_FACILITY),
            style.get(RichEditorStyleAttributes.VIEWPOINT)
        )
    }
}
