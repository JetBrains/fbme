package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.EditorSettings;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramController;
import org.fbme.scenes.controllers.diagram.DiagramFacility;

import java.awt.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MagneticNetworkManager {
    private static final int MAGNETIC_PADDING = 20;

    private final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    private final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    private final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    private final ComponentSynchronizer<NetworkComponentView, Point> componentSynchronizer;
    private final ConnectionPathSyncronizer<NetworkConnectionView, FBConnectionPath> connectionSynchronizer;
    private final SceneViewpoint viewpoint;

    private final Map<Integer, Set<Integer>> xLines = new HashMap<>();
    private final Map<Integer, Set<Integer>> yLines = new HashMap<>();

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
    }

    private void processComponents() {
        Set<NetworkComponentView> components = diagramController.getComponents();
        for (NetworkComponentView component : components) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds;
//            if (component instanceof FunctionBlockView) {
//                componentBounds = ((FunctionBlockController) componentController).getFBCellBounds(componentPosition);
//            } else {
                componentBounds = componentController.getBounds(componentPosition);
//            }
            int x = viewpoint.translateFromEditorX(componentBounds.x);
            int y = viewpoint.translateFromEditorY(componentBounds.y);
            int width = viewpoint.fromEditorDimension(componentBounds.width);
            int height = viewpoint.fromEditorDimension(componentBounds.height);

            processXLine(x, y, height);
            processXLine(x + width, y, height);

            processYLine(x, y, width);
            processYLine(x, y + height, width);
        }
    }

    private void processYLine(int x, int y, int width) {
        if (!yLines.containsKey(y)) {
            Set<Integer> xs = new HashSet<>();
            xs.add(x);
            xs.add(x + width);
            yLines.put(y, xs);
        } else {
            Set<Integer> xs = yLines.get(y);
            xs.add(x);
            xs.add(x + width);
        }
    }

    private void processXLine(int x, int y, int height) {
        if (!xLines.containsKey(x)) {
            Set<Integer> ys = new HashSet<>();
            ys.add(y);
            ys.add(y + height);
            xLines.put(x, ys);
        } else {
            Set<Integer> ys = xLines.get(x);
            ys.add(y);
            ys.add(y + height);
        }
    }

    public Point getMagnetizedRectanglePosition(Rectangle rect, int fontSize) {
        int x = viewpoint.translateFromEditorX(rect.x);
        int y = viewpoint.translateFromEditorY(rect.y);
        int width = viewpoint.fromEditorDimension(rect.width);
        int height = viewpoint.fromEditorDimension(rect.height);

        Point position = new Point(x, y);

        position = getMagnetizedPosition(position, fontSize);
        position = getMagnetizedPosition(new Point(position.x + width, position.y + height), fontSize);

        position.translate(-width, -height);

        return new Point(viewpoint.translateToEditorX(position.x), viewpoint.translateToEditorY(position.y));
    }

    public Point getMagnetizedPosition(Point position, int fontSize) {
        int x = position.x;
        int y = position.y;

        int magnetizedX = x;
        int magnetizedY = y;

        int padding = scale(MAGNETIC_PADDING, fontSize);
//        int padding = MAGNETIC_PADDING;
        for (int i = 0; i <= padding; ++i) {
            if (magnetizedX == x) {
                if (xLines.containsKey(x + i)) {
                    int dy = getDy(x + i, y);
                    if (dy < 1000) {
                        magnetizedX = x + i;
                    }
                } else if (xLines.containsKey(x - i)) {
                    int dy = getDy(x - i, y);
                    if (dy < 1000) {
                        magnetizedX = x - i;
                    }
                }
            }
            if (magnetizedY == y) {
                if (yLines.containsKey(y - i)) {
                    int dx = getDx(x, y - i);
                    if (dx < 1000) {
                        magnetizedY = y - i;
                    }
                } else if (yLines.containsKey(y + i)) {
                    int dx = getDx(x, y + i);
                    if (dx < 1000) {
                        magnetizedY = y + i;
                    }
                }
            }
        }
        return new Point(magnetizedX, magnetizedY);
    }

    private int getDx(int x, int y) {
        Set<Integer> xs = yLines.get(y);
        int dx = (int) 1e9;
        for (Integer xi : xs) {
            dx = Math.min(dx, Math.abs(xi - x));
        }
        return dx;
    }

    private int getDy(int x, int y) {
        Set<Integer> ys = xLines.get(x);
        int dy = (int) 1e9;
        for (Integer yi : ys) {
            dy = Math.min(dy, Math.abs(yi - y));
        }
        return dy;
    }

    private int scale(int size, int fontSize) {
        return size * fontSize / EditorSettings.getInstance().getFontSize();
    }
}
