package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
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

public class RelayoutAction {
    private final ELKLayoutProvider layoutProvider;

    public RelayoutAction(EditorCell cell) {
        Style style = cell.getStyle();
        DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility = style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        ComponentsFacility<NetworkComponentView, Point> componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility = style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);
        SceneViewpoint viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT);

        layoutProvider = new ELKLayoutProvider(diagramFacility, componentsFacility, connectionsFacility, viewpoint);
    }

    public void apply() {
        layoutProvider.relayout();
    }
}
