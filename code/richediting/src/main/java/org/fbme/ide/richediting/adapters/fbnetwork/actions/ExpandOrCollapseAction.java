package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramController;
import org.fbme.scenes.controllers.diagram.DiagramFacility;

import java.awt.*;
import java.util.Set;

public abstract class ExpandOrCollapseAction implements Action {
    protected final Set<NetworkComponentView> selectedFBs;
    protected final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    protected final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    protected final SceneViewpoint viewpoint;
    protected final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    protected final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    protected final ComponentSynchronizer<NetworkComponentView, Point> componentsSynchronizer;
    protected final ConnectionPathSyncronizer<NetworkConnectionView, FBConnectionPath> connectionSynchronizer;

    protected ExpandOrCollapseAction(EditorCell cell) {
        Style style = cell.getStyle();
        selectedFBs = style.get(RichEditorStyleAttributes.SELECTED_FBS).getSelectedComponents();
        componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        connectionsFacility = style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);
        diagramFacility = style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT);

        diagramController = diagramFacility.getDiagramController();
        componentsSynchronizer = componentsFacility.getComponentSyncronizer();
        connectionSynchronizer = connectionsFacility.getConnectionSynchronizer();
    }
}
