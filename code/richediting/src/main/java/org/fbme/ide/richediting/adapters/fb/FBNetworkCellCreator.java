package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.ecc.ECCEditors;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkEditors;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramController;
import org.fbme.scenes.controllers.diagram.DiagramFacility;
import org.fbme.scenes.controllers.scene.SceneLayout;
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

    public EditorCell_Scene createNetworkCellComponent(EditorContext context, SNode node, FunctionBlockView view) {
        Declaration fbTypeDeclaration = view.getComponent().getType().getDeclaration();
        EditorCell_Scene scene = null;
        if (fbTypeDeclaration instanceof BasicFBTypeDeclaration) {
            scene = (EditorCell_Scene) ECCEditors.createEccEditor(context, node, SceneLayout.WINDOWED);
        } else {
            scene = (EditorCell_Scene) FBNetworkEditors.createFBNetworkCell(context, node, SceneLayout.WINDOWED);
        }
        scene.setCellId(scene.getSNode().getNodeId().toString());

        return scene;
    }
}
