package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.ecc.ECCEditors;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter;
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkEditors;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;
import org.fbme.scenes.controllers.scene.Layer;
import org.fbme.scenes.controllers.scene.SceneLayout;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Set;

public final class FBSceneCell extends AbstractFBCell {
    private final EditorCell_Scene sceneCell;

    public FBSceneCell(
            EditorContext context,
            FBTypeDescriptor fbType,
            SNode node,
            boolean isEditable,
            NetworkInstance networkInstance
    ) {
        super(context, fbType, node, isEditable);

        sceneCell = createSceneCell(networkInstance);
        sceneCell.getStyle().set(RichEditorStyleAttributes.NETWORK_INSTANCE, networkInstance);
        sceneCell.getStyle().set(RichEditorStyleAttributes.TYPE, fbType);
        sceneCell.getStyle().set(StyleAttributes.TEXT_COLOR, isEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);

        initPorts();
    }

    private EditorCell_Scene createSceneCell(NetworkInstance networkInstance) {
        EditorCell_Scene scene;
        if (fbType.getDeclaration() instanceof BasicFBTypeDeclaration) {
            scene = (EditorCell_Scene) ECCEditors.createEccEditor(context, node, SceneLayout.WINDOWED, networkInstance);
        } else {
            scene = (EditorCell_Scene) FBNetworkEditors.createFBNetworkCell(context, node, SceneLayout.WINDOWED, networkInstance);
        }
        addScenePortsLayer(scene);

        scene.setCellId(scene.getSNode().getNodeId().toString());
        setSceneSizes(scene);

        return scene;
    }

    private void addScenePortsLayer(EditorCell_Scene scene) {
        Layer layer = scene.createLayer(5f);
        scene.addPainter(layer, graphics -> {
            Color foreground = getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);
            drawAllPortIcons(graphics, foreground);
        });
    }

    private void setSceneSizes(EditorCell_Scene scene) {
        DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility = scene.getStyle().get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        ComponentsFacility<NetworkComponentView, Point> componentsFacility = scene.getStyle().get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility = scene.getStyle().get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);

        DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController = diagramFacility.getDiagramController();

        Set<NetworkComponentView> components = diagramController.getComponents();
        Set<NetworkConnectionView> connections = diagramController.getConnections();

        int minX = (int) 1e9;
        int minY = (int) 1e9;
        int maxX = (int) -1e9;
        int maxY = (int) -1e9;

        for (NetworkComponentView component : components) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);

            int x1 = (int) componentBounds.getX();
            int y1 = (int) componentBounds.getY();
            int x2 = (int) (x1 + componentBounds.getWidth());
            int y2 = (int) (y1 + componentBounds.getHeight());

            minX = Math.min(minX, x1);
            minY = Math.min(minY, y1);
            maxX = Math.max(maxX, x2);
            maxY = Math.max(maxY, y2);
        }

        for (NetworkConnectionView connection : connections) {
            ConnectionPath connectionPath = connection.getConnectionPath();
            if (connectionPath.getKind() == ConnectionPath.Kind.FourAngles) {
                NetworkPortView source = diagramController.getSource(connection);
                NetworkPortView target = diagramController.getTarget(connection);

                PortController sourcePortController = diagramController.getPortController(source);
                PortController targetPortController = diagramController.getPortController(target);

                Point sourcePosition = sourcePortController.getModelEndpointPosition();
                Point targetPosition = targetPortController.getModelEndpointPosition();

                ConnectionPathSyncronizer<NetworkConnectionView, FBConnectionPath> connectionSynchronizer = connectionsFacility.getConnectionSynchronizer();

                FBConnectionPath path = connectionSynchronizer.getPath(connection).apply(sourcePosition, targetPosition);

                // TODO: use scale
                int x1 = path.getX1();
//                int x1 = sourcePosition.x + connectionPath.getDX1();
                int x2 = path.getX2();
//                int x2 = targetPosition.x - connectionPath.getDX2();

                int y = path.getY();
//                int y = sourcePosition.y + connectionPath.getDY();

                minX = Math.min(Math.min(minX, x1), x2);
                maxX = Math.max(Math.max(maxX, x1), x2);

                minY = Math.min(minY, y);
                maxY = Math.max(maxY, y);
            }
        }

        scene.setWidth(maxX - minX);
        scene.setHeight(maxY - minY);
    }

    @Override
    public void paintTrace(Graphics2D g, int x, int y) {
        g.setPaint(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1));
        g.drawRect(x, y, getWidth(), getHeight());
    }

    @Override
    public Rectangle getInputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = eventNumber * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getOutputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = eventNumber * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public Rectangle getInputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getOutputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public Rectangle getSocketPortBounds(int socketNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + getInputDataPortsCount() + 2 + socketNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getPlugPortBounds(int plugNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + 2 + getOutputDataPortsCount() + plugNumber) * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public EditorCell_Scene getRootCell() {
        return sceneCell;
    }
}
