package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;

import java.awt.*;
import java.util.List;
import java.util.Queue;
import java.util.*;
import java.util.stream.Collectors;

public class EdgeRoutingProvider {

    private final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    private final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    private final SceneViewpoint viewpoint;
    private final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    private final ConnectionPathSyncronizer<NetworkConnectionView, FBConnectionPath> connectionSynchronizer;

    private static final int LEFT_PADDING = 1000;
    private static final int RIGHT_PADDING = 1000;
    private static final int TOP_PADDING = 1000;
    private static final int BOTTOM_PADDING = 1000;
    private static final int LINE_SIZE = 100;
    private static final int COLUMN_SIZE = 100;

    private final int[] xs = {-1, 0, 0, 1};
    private final int[] ys = {0, -1, 1, 0};


    public EdgeRoutingProvider(
            DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility,
            ComponentsFacility<NetworkComponentView, Point> componentsFacility,
            ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility,
            SceneViewpoint viewpoint
    ) {
        this.diagramFacility = diagramFacility;
        this.componentsFacility = componentsFacility;
        this.connectionsFacility = connectionsFacility;
        this.viewpoint = viewpoint;
        this.diagramController = diagramFacility.getDiagramController();
        this.connectionSynchronizer = connectionsFacility.getConnectionSynchronizer();
    }

    public void routeEdges() {
        Map<NetworkComponentView, NetworkConnectionView> outgoingEdges = new HashMap<>();

        Set<NetworkComponentView> components = diagramController.getComponents();

        int minX = (int) 1e9;
        int minY = (int) 1e9;
        int maxX = (int) -1e9;
        int maxY = (int) -1e9;

        for (NetworkComponentView component : components) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);
            int x = viewpoint.translateFromEditorX(componentBounds.x);
            int y = viewpoint.translateFromEditorY(componentBounds.y);
            int width = viewpoint.fromEditorDimension(componentBounds.width);
            int height = viewpoint.fromEditorDimension(componentBounds.height);

            minX = Math.min(minX, x);
            maxX = Math.max(maxX, x + width);
            minY = Math.min(minY, y);
            maxY = Math.max(maxY, y + height);
        }

        int left = minX - LEFT_PADDING;
        int top = minY - TOP_PADDING;
        int right = maxX + RIGHT_PADDING;
        int bottom = maxY + BOTTOM_PADDING;

        List<ArrayList<Integer>> matrix = new ArrayList<>();

        for (int i = 0; i < (bottom - top) / LINE_SIZE; ++i) {
            ArrayList<Integer> row = new ArrayList<>();
            for (int j = 0; j < (right - left) / COLUMN_SIZE; ++j) {
                row.add(0);
            }
            matrix.add(row);
        }

        for (NetworkComponentView component : components) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);
            int x = viewpoint.translateFromEditorX(componentBounds.x);
            int y = viewpoint.translateFromEditorY(componentBounds.y);
            int width = viewpoint.fromEditorDimension(componentBounds.width);
            int height = viewpoint.fromEditorDimension(componentBounds.height);

            int indexX = (x - left) / COLUMN_SIZE;
            int indexY = (y - top) / LINE_SIZE;

            for (int i = 0; i < height / LINE_SIZE; ++i) {
                for (int j = 0; j < width / COLUMN_SIZE; ++j) {
                    matrix.get(indexY + i).set(indexX + j, (int) -1e9);
                }
            }
        }

        Set<NetworkConnectionView> connections = diagramController.getConnections();
        for (NetworkConnectionView connection : connections) {
            NetworkPortView source = diagramController.getSource(connection);
            NetworkPortView target = diagramController.getTarget(connection);

            PortController sourcePortController = diagramController.getPortController(source);
            Rectangle sourcePortBounds = sourcePortController.getBounds();
            Point from = new Point(
                    (viewpoint.translateFromEditorX(sourcePortBounds.x + sourcePortBounds.width) - left) / COLUMN_SIZE,
                    (viewpoint.translateFromEditorY(sourcePortBounds.y + sourcePortBounds.height / 2) - top) / LINE_SIZE
            );

            PortController targetPortController = diagramController.getPortController(target);
            Rectangle targetPortBounds = targetPortController.getBounds();
            Point to = new Point(
                    (viewpoint.translateFromEditorX(targetPortBounds.x) - left) / COLUMN_SIZE,
                    (viewpoint.translateFromEditorY(targetPortBounds.y + targetPortBounds.height / 2) - top) / LINE_SIZE
            );

            List<Point> bendPoints = routeEdge(from, to, matrix)
                    .stream()
                    .map(point -> new Point(
                            viewpoint.translateToEditorX(left + point.x * COLUMN_SIZE),
                            viewpoint.translateToEditorY(top + point.y * LINE_SIZE)))
                    .collect(Collectors.toList());

            FBConnectionPath editorPath = connectionSynchronizer.getPath(connection).apply(
                    sourcePortController.getModelEndpointPosition(),
                    targetPortController.getModelEndpointPosition()
            );

            if (bendPoints.size() > 1) {

                Point sourcePosition = editorPath.getSourcePosition();
                Point targetPosition = editorPath.getTargetPosition();
                bendPoints.get(0).y = sourcePosition.y;
                bendPoints.get(bendPoints.size() - 1).y = targetPosition.y;

                connectionSynchronizer.setPath(connection, new FBConnectionPath(
                        sourcePosition,
                        targetPosition,
                        bendPoints)
                );
            }
        }
    }

    private List<Point> routeEdge(Point from, Point to, List<ArrayList<Integer>> matrix) {
        List<ArrayList<Integer>> m = new ArrayList<>();
        for (ArrayList<Integer> integers : matrix) {
            m.add(new ArrayList<>(integers));
        }

        Queue<Point> queue = new ArrayDeque<>();
        queue.add(from);

        m.get(from.y).set(from.x, 1);
        m.get(to.y).set(to.x, 0);

        while (!queue.isEmpty() && m.get(to.y).get(to.x) == 0) {
            Point cur = queue.poll();

            for (int i = 0; i < 4; ++i) {
                Point next = new Point(cur.x + xs[i], cur.y + ys[i]);
                if (isValidNext(m, next) && m.get(next.y).get(next.x) <= 0) {
                    m.get(next.y).set(
                            next.x,
                            m.get(cur.y).get(cur.x) + 1 - m.get(next.y).get(next.x)
                    );
                    queue.add(next);
                }
            }
        }

        List<Point> bendPoints = new ArrayList<>();

        Point cur = to;
        int direction = 0;
        while (!cur.equals(from)) {
            m.get(cur.y).set(cur.x, -1);
            Point bestNext = cur;
            long bestCost = Long.MAX_VALUE;
            for (int i = 0; i < 4; ++i) {
                Point next = new Point(cur.x + xs[i], cur.y + ys[i]);
                if (isValidNext(m, next) && m.get(next.y).get(next.x) > 0) {
                    int cost = m.get(next.y).get(next.x);
                    if (bestCost > cost) {
                        bestNext = next;
                        bestCost = cost;
                    }
                }
            }
            assert !bestNext.equals(cur);
            if (!bestNext.equals(from)) {
                if (direction == 0 && bestNext.y != cur.y) {
                    direction = 1;
                    bendPoints.add(cur);
                } else if (direction == 1 && bestNext.x != cur.x) {
                    direction = 0;
                    bendPoints.add(cur);
                }
                matrix.get(bestNext.y).set(bestNext.x, -1);
            }
            cur = bestNext;
        }

        Collections.reverse(bendPoints);

        return bendPoints;
    }

    private boolean isValidNext(List<ArrayList<Integer>> m, Point next) {
        return 0 <= next.y && next.y < m.size()
                && 0 <= next.x && next.x < m.get(next.y).size();
    }
}
