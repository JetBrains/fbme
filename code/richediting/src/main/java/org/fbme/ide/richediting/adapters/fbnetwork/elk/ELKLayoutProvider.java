package org.fbme.ide.richediting.adapters.fbnetwork.elk;

import com.intellij.openapi.util.Pair;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.eclipse.elk.alg.layered.options.LayeredMetaDataProvider;
import org.eclipse.elk.core.IGraphLayoutEngine;
import org.eclipse.elk.core.RecursiveGraphLayoutEngine;
import org.eclipse.elk.core.data.ILayoutMetaDataProvider;
import org.eclipse.elk.core.data.LayoutMetaDataService;
import org.eclipse.elk.core.options.CoreOptions;
import org.eclipse.elk.core.util.NullElkProgressMonitor;
import org.eclipse.elk.graph.*;
import org.eclipse.elk.graph.util.ElkGraphUtil;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.viewmodel.*;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;

import java.awt.*;
import java.util.List;
import java.util.*;

import static org.junit.Assert.assertTrue;

public class ELKLayoutProvider {
//    private static final Logger LOG = LogManager.getLogger(ELKLayoutProvider.class);

    private final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    private final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    private final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    private final ComponentSynchronizer<NetworkComponentView, Point> componentSynchronizer;
    private final ConnectionPathSynchronizer<NetworkConnectionView, FBConnectionPath> connectionSynchronizer;
    private final SceneViewpoint viewpoint;

    private final IGraphLayoutEngine layoutEngine = new RecursiveGraphLayoutEngine();
    private final List<ILayoutMetaDataProvider> layoutProviders = Arrays.asList(new CoreOptions(), new LayeredMetaDataProvider());
    private final ELKProperties layoutPropertiesProvider = new ELKProperties();

    public ELKLayoutProvider(
            DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility,
            ComponentsFacility<NetworkComponentView, Point> componentsFacility,
            ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility,
            SceneViewpoint viewpoint
    ) {
        this.diagramFacility = diagramFacility;
        this.componentsFacility = componentsFacility;
        this.connectionsFacility = connectionsFacility;
        this.diagramController = diagramFacility.getDiagramController();
        this.componentSynchronizer = componentsFacility.getComponentSynchronizer();
        this.connectionSynchronizer = connectionsFacility.getConnectionSynchronizer();
        this.viewpoint = viewpoint;
    }

    public void relayout() {
        try {
            LayoutMetaDataService.getInstance().registerLayoutMetaDataProviders(layoutProviders.toArray(new ILayoutMetaDataProvider[0]));
            List<Pair<NetworkComponentView, ElkNode>> nodes = new ArrayList<>();
            Map<NetworkPortView, ElkPort> mapViewPort = new HashMap<>();
            List<Pair<NetworkConnectionView, ElkEdge>> edges = new ArrayList<>();
            List<Pair<InterfaceEndpointView, ElkPort>> endpoints = new ArrayList<>();
            ElkNode root = createElkGraph(nodes, edges, endpoints, mapViewPort);
            layoutEngine.layout(root, new NullElkProgressMonitor());
            applyLayout(nodes, endpoints, edges);
        } catch (Throwable t) {
//            LOG.error("error when relayout");
        }
    }

    private ElkNode createElkGraph(List<Pair<NetworkComponentView, ElkNode>> nodes, List<Pair<NetworkConnectionView, ElkEdge>> edges, List<Pair<InterfaceEndpointView, ElkPort>> endpoints, Map<NetworkPortView, ElkPort> mapViewPort) {
        ElkNode root = ElkGraphUtil.createGraph();
        ElkNode node = ElkGraphUtil.createNode(root);
        node.setLocation(0.0, 0.0);
        layoutPropertiesProvider.setRootProperties(node);

        processComponents(node, nodes, endpoints, mapViewPort);
        processConnections(node, mapViewPort, edges);

        return root;
    }

    private void processConnections(ElkNode parent, Map<NetworkPortView, ElkPort> mapViewPort, List<Pair<NetworkConnectionView, ElkEdge>> edges) {
        for (NetworkConnectionView connection : diagramController.getConnections()) {
            ElkPort sourceElkPort = mapViewPort.get(diagramController.getSource(connection));
            ElkPort targetElkPort = mapViewPort.get(diagramController.getTarget(connection));

            ElkEdge elkEdge = ElkGraphUtil.createSimpleEdge(sourceElkPort, targetElkPort);
            elkEdge.setContainingNode(parent);
            edges.add(new Pair<>(connection, elkEdge));
        }
    }

    private void processComponents(ElkNode parent, List<Pair<NetworkComponentView, ElkNode>> nodes, List<Pair<InterfaceEndpointView, ElkPort>> endpoints, Map<NetworkPortView, ElkPort> mapViewPort) {
        for (NetworkComponentView component : diagramController.getComponents()) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);
            int x = viewpoint.translateFromEditorX(componentBounds.x);
            int y = viewpoint.translateFromEditorY(componentBounds.y);
            int width = viewpoint.fromEditorDimension(componentBounds.width);
            int height = viewpoint.fromEditorDimension(componentBounds.height);

            if (component instanceof InterfaceEndpointView) {
                InterfaceEndpointView endpoint = (InterfaceEndpointView) component;
                ElkPort port = ElkGraphUtil.createPort(parent);
                port.setDimensions(width, height);
                layoutPropertiesProvider.setPortProperties(port, endpoint.isSource());
                mapViewPort.put(endpoint, port);
                endpoints.add(new Pair<>(endpoint, port));
                continue;
            }

            ElkNode node = ElkGraphUtil.createNode(parent);
            node.setLocation(x, y);
            node.setDimensions(width, height);
            layoutPropertiesProvider.setNodeProperties(node);

            for (NetworkPortView componentPort : diagramController.getPorts(component)) {
                PortController componentPortController = diagramController.getPortController(componentPort);
                Rectangle componentPortBounds = componentPortController.getBounds();
                int portX = viewpoint.translateFromEditorX(componentPortBounds.x);
                int portY = viewpoint.translateFromEditorY(componentPortBounds.y);
                int portWidth = viewpoint.fromEditorDimension(componentPortBounds.width);
                int portHeight = viewpoint.fromEditorDimension(componentPortBounds.height);

                ElkPort port = ElkGraphUtil.createPort(node);
                port.setLocation(portX - x, portY - y);
                port.setDimensions(portWidth, portHeight);
                if (componentPort instanceof FunctionBlockPortView) {
                    layoutPropertiesProvider.setPortProperties(port, ((FunctionBlockPortView) componentPort).isSource());
                }
                mapViewPort.put(componentPort, port);
            }
            nodes.add(new Pair<>(component, node));
        }
    }

    private void applyLayout(List<Pair<NetworkComponentView, ElkNode>> nodes, List<Pair<InterfaceEndpointView, ElkPort>> endpoints, List<Pair<NetworkConnectionView, ElkEdge>> edges) {
        applyNodeLayout(nodes);
        applyEndpointLayout(endpoints);
        applyEdgeLayout(edges);
    }

    private void applyEndpointLayout(List<Pair<InterfaceEndpointView, ElkPort>> endpoints) {
        for (Pair<InterfaceEndpointView, ElkPort> endpoint : endpoints) {
            ElkPort elkPort = endpoint.second;
            int x = viewpoint.translateToEditorX((int) elkPort.getX());
            int y = viewpoint.translateToEditorY((int) elkPort.getY());

            componentSynchronizer.setForm(endpoint.first, new Point(x, y));
        }
    }

    private void applyNodeLayout(List<Pair<NetworkComponentView, ElkNode>> nodes) {
        for (Pair<NetworkComponentView, ElkNode> node : nodes) {
            ElkNode elkNode = node.second;
            int x = viewpoint.translateToEditorX((int) elkNode.getX());
            int y = viewpoint.translateToEditorY((int) elkNode.getY());

            componentSynchronizer.setForm(node.first, new Point(x, y));
        }
    }

    private void applyEdgeLayout(List<Pair<NetworkConnectionView, ElkEdge>> edges) {
        for (Pair<NetworkConnectionView, ElkEdge> edge : edges) {
            ElkEdge elkEdge = edge.second;
            List<Point> points = getPointsFromEdge(elkEdge);
            assertTrue(points.size() >= 2 && points.size() % 2 == 0);
            FBConnectionPath connectionPath = getConnectionPathFromPoints(points);

            connectionSynchronizer.setPath(edge.first, connectionPath);
        }
    }

    private ArrayList<Point> getPointsFromEdge(ElkEdge elkEdge) {
        ArrayList<Point> points = new ArrayList<>();
        for (ElkEdgeSection section : elkEdge.getSections()) {
            int startX = viewpoint.translateToEditorX((int) section.getStartX());
            int startY = viewpoint.translateToEditorY((int) section.getStartY());
            points.add(new Point(startX, startY));
            for (ElkBendPoint bendPoint : section.getBendPoints()) {
                int x = viewpoint.translateToEditorX((int) bendPoint.getX());
                int y = viewpoint.translateToEditorY((int) bendPoint.getY());
                points.add(new Point(x, y));
            }
            int endX = viewpoint.translateToEditorX((int) section.getEndX());
            int endY = viewpoint.translateToEditorY((int) section.getEndY());
            points.add(new Point(endX, endY));
        }
        return points;
    }

    private FBConnectionPath getConnectionPathFromPoints(List<Point> points) {
        int count = points.size();
        assertTrue(count >= 2 && count % 2 == 0);
        if (count > 6) {
            return new FBConnectionPath(
                    points.get(0),
                    points.get(points.size() - 1),
                    points.subList(1, points.size() - 1)
            );
        }

        int x1 = 0, y = 0, x2 = 0;
        ConnectionPath.Kind pathKind = ConnectionPath.Kind.Straight;
        if (count > 2) {
            x1 = points.get(1).x;
            pathKind = ConnectionPath.Kind.TwoAngles;
            if (count > 4) {
                x2 = points.get(count - 2).x;
                y = points.get(2).y;
                pathKind = ConnectionPath.Kind.FourAngles;
            }
        }
        return new FBConnectionPath(points.get(0), points.get(count - 1), pathKind, x1, y, x2);
    }
}
