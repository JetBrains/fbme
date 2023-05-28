package org.fbme.ide.richediting.adapters.fbnetwork.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathSynchronizer
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkComponentSynchronizer
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.utils.Notifier
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramController
import org.fbme.scenes.controllers.diagram.DiagramFacility
import org.fbme.scenes.controllers.edited.EditedModel
import java.awt.Point

abstract class FBNetworkAction protected constructor(protected val cell: EditorCell, protected val project: MPSProject) {
    @JvmField
    protected val selectedFBs: Set<NetworkComponentView>

    @JvmField
    protected val editedFBs: List<FunctionBlockView>

    @JvmField
    protected val editedFBsController: EditedModel<FunctionBlockView>

    @JvmField
    protected val networkInstance: NetworkInstance

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

    protected fun showNotification(message: String) {
        Notifier.showWarning(message, project.project)
    }

    init {
        val style = cell.style
        selectedFBs = style.get(RichEditorStyleAttributes.SELECTED_FBS).selectedComponents
        editedFBs = style.get(RichEditorStyleAttributes.EDITED_FBS).editedComponents
        editedFBsController = style.get(RichEditorStyleAttributes.EDITED_FBS)
        networkInstance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
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
