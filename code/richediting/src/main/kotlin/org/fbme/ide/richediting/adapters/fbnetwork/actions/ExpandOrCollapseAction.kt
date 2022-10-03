package org.fbme.ide.richediting.adapters.fbnetwork.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathSynchronizer
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkComponentSynchronizer
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramController
import org.fbme.scenes.controllers.diagram.DiagramFacility
import java.awt.Point

abstract class ExpandOrCollapseAction protected constructor(cell: EditorCell) {
    @JvmField
    protected val selectedFBs: Set<NetworkComponentView>

    @JvmField
    protected val componentsFacility: ComponentsFacility<NetworkComponentView, Point>

    @JvmField
    protected val diagramFacility: DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>

    @JvmField
    protected val viewpoint: SceneViewpoint

    @JvmField
    protected val connectionsFacility: ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>

    @JvmField
    protected val diagramController: DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView>

    @JvmField
    protected val componentsSynchronizer: FBNetworkComponentSynchronizer

    @JvmField
    protected val connectionSynchronizer: FBConnectionPathSynchronizer

    init {
        val style = cell.style
        selectedFBs = style.get(RichEditorStyleAttributes.SELECTED_FBS).selectedComponents
        componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY)
            as ComponentsFacility<NetworkComponentView, Point>
        connectionsFacility = style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY)
            as ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>
        diagramFacility = style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY)
            as DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>
        viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT)
        diagramController = diagramFacility.diagramController
        componentsSynchronizer = componentsFacility.componentSynchronizer as FBNetworkComponentSynchronizer
        connectionSynchronizer = connectionsFacility.connectionSynchronizer as FBConnectionPathSynchronizer
    }
}
