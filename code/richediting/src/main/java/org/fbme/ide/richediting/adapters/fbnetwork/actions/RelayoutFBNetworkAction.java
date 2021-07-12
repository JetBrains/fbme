package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.richediting.adapters.common.actions.Action;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.elk.ELKLayoutProvider;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramFacility;

import java.awt.*;

public class RelayoutFBNetworkAction implements Action {
    private final ELKLayoutProvider layoutProvider;

    public RelayoutFBNetworkAction(EditorCell cell) {
        Style style = cell.getStyle();
        DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility = (DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>) style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        ComponentsFacility<NetworkComponentView, Point> componentsFacility = (ComponentsFacility<NetworkComponentView, Point>) style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility = (ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>) style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);
        SceneViewpoint viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT);

        layoutProvider = new ELKLayoutProvider(diagramFacility, componentsFacility, connectionsFacility, viewpoint);
    }


    @Override
    public void apply() {
        layoutProvider.relayout();
    }
}
