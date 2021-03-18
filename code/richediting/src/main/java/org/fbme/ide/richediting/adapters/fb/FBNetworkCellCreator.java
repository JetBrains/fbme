package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramController;
import org.fbme.scenes.controllers.diagram.DiagramFacility;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class FBNetworkCellCreator {
    private final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    private final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    private final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;

    public FBNetworkCellCreator(
            DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility,
            ComponentsFacility<NetworkComponentView, Point> componentsFacility,
            ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility
    ) {
        this.diagramFacility = diagramFacility;
        this.componentsFacility = componentsFacility;
        this.connectionsFacility = connectionsFacility;
        this.diagramController = diagramFacility.getDiagramController();
    }

    public EditorCell_Collection createNetworkCellComponent(EditorContext editorContext, SNode node, FunctionBlockView view) {
        EditorCell_Collection networkCell = new EditorCell_Collection(editorContext, node, new AbstractCellLayout() {
            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection editorCell_collection) {

            }

            @Override
            public TextBuilder doLayoutText(Iterable<EditorCell> iterable) {
                return new TextBuilderImpl();
            }
        }) {
            @Override
            protected void paintContent(Graphics g, ParentSettings parentSettings) {
                EditorCell_Collection parent = getParent();
                g.drawRect(parent.getX(), parent.getY(), parent.getWidth(), parent.getHeight());
                g.drawString("Node", parent.getX(), parent.getY());
            }
        };

        return networkCell;
    }
}
