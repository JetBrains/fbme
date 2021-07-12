package org.fbme.ide.richediting.adapters.ecc.elk;

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
import org.eclipse.emf.common.util.EList;
import org.fbme.ide.richediting.adapters.ecc.ECTransitionCursor;
import org.fbme.ide.richediting.adapters.ecc.ECTransitionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.lib.iec61499.ecc.ECTransitionCondition;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;

import java.awt.*;
import java.util.*;
import java.util.List;

import static org.junit.Assert.assertTrue;

public class ELKLayoutProvider {
    private static final Logger LOG = LogManager.getLogger(ELKLayoutProvider.class);

    private final DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point> diagramFacility;
    private final ComponentsFacility<StateDeclaration, Point> componentsFacility;
    private final ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath> connectionsFacility;
    private final SceneViewpoint viewpoint;
    private final DiagramController<StateDeclaration, StateDeclaration, StateTransition> diagramController;
    private final ComponentSynchronizer<StateDeclaration, Point> componentSynchronizer;
    private final ConnectionPathSyncronizer<StateTransition, ECTransitionPath> connectionSynchronizer;

    private final IGraphLayoutEngine layoutEngine = new RecursiveGraphLayoutEngine();
    private final List<ILayoutMetaDataProvider> layoutProviders = Arrays.asList(new CoreOptions(), new LayeredMetaDataProvider());
    private final ELKProperties layoutPropertiesProvider = new ELKProperties();

    public ELKLayoutProvider(
            DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point> diagramFacility,
            ComponentsFacility<StateDeclaration, Point> componentsFacility,
            ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath> connectionsFacility,
            SceneViewpoint viewpoint
    ) {
        this.diagramFacility = diagramFacility;
        this.componentsFacility = componentsFacility;
        this.connectionsFacility = connectionsFacility;
        this.diagramController = diagramFacility.getDiagramController();
        this.componentSynchronizer = componentsFacility.getComponentSyncronizer();
        this.connectionSynchronizer = connectionsFacility.getConnectionSynchronizer();
        this.viewpoint = viewpoint;
    }

    public void relayout() {
        try {
            LayoutMetaDataService.getInstance().registerLayoutMetaDataProviders(layoutProviders.toArray(new ILayoutMetaDataProvider[0]));
            Map<StateDeclaration, ElkNode> nodes = new HashMap<>();

            List<Pair<StateTransition, ElkEdge>> edges = new ArrayList<>();
            ElkNode root = createElkGraph(nodes, edges);
            layoutEngine.layout(root, new NullElkProgressMonitor());
            applyLayout(nodes, edges);
        } catch (Throwable t) {
            LOG.error("error when relayout");
        }
    }

    private ElkNode createElkGraph(Map<StateDeclaration, ElkNode> nodes, List<Pair<StateTransition, ElkEdge>> edges) {
        ElkNode root = ElkGraphUtil.createGraph();
        ElkNode node = ElkGraphUtil.createNode(root);
        node.setLocation(0.0, 0.0);
        layoutPropertiesProvider.setRootProperties(node);

        processComponents(node, nodes);
        processConnections(node, edges, nodes);

        return root;
    }

    private void processComponents(ElkNode parent, Map<StateDeclaration, ElkNode> nodes) {
        for (StateDeclaration component : diagramController.getComponents()) {
            ComponentController<Point> componentController = componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);
            int x = viewpoint.translateFromEditorX(componentBounds.x);
            int y = viewpoint.translateFromEditorY(componentBounds.y);
            int width = viewpoint.fromEditorDimension(componentBounds.width);
            int height = viewpoint.fromEditorDimension(componentBounds.height);

            ElkNode node = ElkGraphUtil.createNode(parent);
            node.setLocation(x, y);
            node.setDimensions(width, height);

            nodes.put(component, node);
        }
    }

    private void processConnections(ElkNode parent, List<Pair<StateTransition, ElkEdge>> edges, Map<StateDeclaration, ElkNode> nodes) {
        for (StateTransition connection : diagramController.getConnections()) {
            StateDeclaration source = diagramController.getSource(connection);
            StateDeclaration target = diagramController.getTarget(connection);

            ElkEdge elkEdge = ElkGraphUtil.createSimpleEdge(nodes.get(source), nodes.get(target));
            elkEdge.setContainingNode(parent);

            ECTransitionCondition condition = connection.getCondition();
            ElkLabel elkLabel = ElkGraphUtil.createLabel("helllllooooooooo", elkEdge);

            edges.add(new Pair<>(connection, elkEdge));
        }
    }

    private void applyLayout(Map<StateDeclaration, ElkNode> nodes, List<Pair<StateTransition, ElkEdge>> edges) {
        applyNodeLayout(nodes);
        applyEdgeLayout(edges);
    }

    private void applyNodeLayout(Map<StateDeclaration, ElkNode> nodes) {
        nodes.forEach((stateDeclaration, elkNode) -> {
            int x = viewpoint.translateToEditorX((int) elkNode.getX());
            int y = viewpoint.translateToEditorY((int) elkNode.getY());

            componentSynchronizer.setForm(stateDeclaration, new Point(x, y));
        });
    }

    private void applyEdgeLayout(List<Pair<StateTransition, ElkEdge>> edges) {
        for (Pair<StateTransition, ElkEdge> edge : edges) {
            ElkEdge elkEdge = edge.second;
            ElkLabel label = elkEdge.getLabels().get(0);

            int x = viewpoint.translateToEditorX((int) label.getX());
            int y = viewpoint.translateToEditorY((int) label.getY());

            connectionSynchronizer.setPath(edge.first, new ECTransitionPath(
                    null,
                    new Point(x, y),
                    null
            ));
        }
    }
}
