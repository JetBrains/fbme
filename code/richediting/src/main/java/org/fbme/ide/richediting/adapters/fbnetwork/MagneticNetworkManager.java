package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.EditorSettings;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;

import java.awt.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MagneticNetworkManager {
    private static final int MAGNETIC_PADDING = 4;

    private final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    private final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    private final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    private final ComponentSynchronizer<NetworkComponentView, Point> componentSynchronizer;
    private final ConnectionPathSyncronizer<NetworkConnectionView, FBConnectionPath> connectionSynchronizer;
    private final SceneViewpoint viewpoint;

    private final Set<Integer> xLines = new HashSet<>();
    private final Set<Integer> yLines = new HashSet<>();

    public MagneticNetworkManager(
            DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility,
            ComponentsFacility<NetworkComponentView, Point> componentsFacility,
            ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility,
            SceneViewpoint viewpoint
    ) {
        this.diagramFacility = diagramFacility;
        this.componentsFacility = componentsFacility;
        this.connectionsFacility = connectionsFacility;
        this.diagramController = diagramFacility.getDiagramController();
        this.componentSynchronizer = componentsFacility.getComponentSyncronizer();
        this.connectionSynchronizer = connectionsFacility.getConnectionSynchronizer();
        this.viewpoint = viewpoint;
        createMagneticLines();
    }

    private void createMagneticLines() {
        processComponents();
        int x = 5;
//        processConnections();
    }

    private void processConnections() {
        Set<NetworkConnectionView> connections = diagramController.getConnections();
        for (NetworkConnectionView connection : connections) {
            NetworkPortView source = diagramController.getSource(connection);
            NetworkPortView target = diagramController.getTarget(connection);

            PortController sourcePortController = diagramController.getPortController(source);
            PortController targetPortController = diagramController.getPortController(target);

            Point sourcePortPosition = sourcePortController.getModelEndpointPosition();
            Point targetPortPosition = targetPortController.getModelEndpointPosition();

            FBConnectionPath path = connectionSynchronizer.getPath(connection).apply(sourcePortPosition, targetPortPosition);
            List<Point> bendPoints = path.getBendPoints();

            for (int i = 1; i < bendPoints.size(); i += 2) {
                Point bendPoint = bendPoints.get(i);
                xLines.add(bendPoint.x);
                yLines.add(bendPoint.y);
            }
        }
    }

    private void processComponents() {
        Set<NetworkComponentView> components = diagramController.getComponents();
        for (NetworkComponentView component : components) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);
            int x = componentBounds.x;
            int y = componentBounds.y;
            int width = componentBounds.width;
            int height = componentBounds.height;

            xLines.add(x);
            xLines.add(x + width);

            yLines.add(y);
            yLines.add(y + height);
        }
    }


    public Point getMagnetizedPosition(Point position, int fontSize) {
        int x = position.x;
        int y = position.y;

        int magnetizedX = x;
        int magnetizedY = y;

        int padding = scale(MAGNETIC_PADDING, fontSize);
        for (int i = 0; i <= padding; ++i) {
            if (magnetizedX == x) {
                if (xLines.contains(x + i)) {
                    magnetizedX = x + i;
                } else if (xLines.contains(x - i)) {
                    magnetizedX = x - i;
                }
            }
            if (magnetizedY == y) {
                if (yLines.contains(y - i)) {
                    magnetizedY = y - i;
                } else if (yLines.contains(y + i)) {
                    magnetizedY = y + i;
                }
            }
        }
        return new Point(magnetizedX, magnetizedY);
    }

    private int scale(int size, int fontSize) {
        return size * fontSize / EditorSettings.getInstance().getFontSize();
    }
}
