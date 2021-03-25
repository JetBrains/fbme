package org.fbme.ide.richediting.adapters.fbnetwork.elk;

import org.eclipse.elk.alg.layered.options.*;
import org.eclipse.elk.core.options.*;
import org.eclipse.elk.graph.ElkNode;
import org.eclipse.elk.graph.ElkPort;

public class ELKProperties {
    public void setRootProperties(ElkNode node) {
        node.setProperty(CoreOptions.ALGORITHM, "org.eclipse.elk.layered");
        node.setProperty(LayeredOptions.EDGE_ROUTING, EdgeRouting.ORTHOGONAL);
        node.setProperty(CoreOptions.DIRECTION, Direction.RIGHT);
        node.setProperty(LayeredMetaDataProvider.NODE_PLACEMENT_STRATEGY, NodePlacementStrategy.NETWORK_SIMPLEX);
        node.setProperty(LayeredMetaDataProvider.THOROUGHNESS, 5000);
        node.setProperty(LayeredMetaDataProvider.LAYERING_NODE_PROMOTION_STRATEGY, NodePromotionStrategy.NO_BOUNDARY);
        node.setProperty(LayeredMetaDataProvider.SPACING_EDGE_NODE_BETWEEN_LAYERS, 50.0);
        node.setProperty(LayeredMetaDataProvider.SPACING_NODE_NODE_BETWEEN_LAYERS, 50.0);
        node.setProperty(CoreOptions.SPACING_COMPONENT_COMPONENT, 50.0);
        node.setProperty(CoreOptions.ASPECT_RATIO, 1.0);
        node.setProperty(CoreOptions.SEPARATE_CONNECTED_COMPONENTS, true);
        node.setProperty(LayeredMetaDataProvider.NODE_PLACEMENT_FAVOR_STRAIGHT_EDGES, false);
    }

    public void setNodeProperties(ElkNode node) {
        node.setProperty(CoreOptions.PORT_CONSTRAINTS, PortConstraints.FIXED_POS);
        node.setProperty(LayeredMetaDataProvider.CROSSING_MINIMIZATION_STRATEGY, CrossingMinimizationStrategy.INTERACTIVE);
        node.setProperty(CoreOptions.INSIDE_SELF_LOOPS_ACTIVATE, true);
    }

    public void setPortProperties(ElkPort port, boolean isSource) {
        port.setProperty(CoreOptions.PORT_SIDE, isSource ? PortSide.EAST : PortSide.WEST);
    }
}
