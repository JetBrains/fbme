package org.fbme.ide.richediting.adapters.fbnetwork.elk;

import org.eclipse.elk.alg.layered.options.*;
import org.eclipse.elk.core.math.ElkPadding;
import org.eclipse.elk.core.options.*;
import org.eclipse.elk.graph.ElkNode;
import org.eclipse.elk.graph.ElkPort;

public class ELKProperties {
    public void setRootProperties(ElkNode node) {
        node.setProperty(CoreOptions.ALGORITHM, "org.eclipse.elk.layered")
            .setProperty(CoreOptions.EDGE_ROUTING, EdgeRouting.ORTHOGONAL)
            .setProperty(CoreOptions.DIRECTION, Direction.RIGHT)
            .setProperty(CoreOptions.SEPARATE_CONNECTED_COMPONENTS, false)
            .setProperty(LayeredMetaDataProvider.NODE_PLACEMENT_STRATEGY, NodePlacementStrategy.NETWORK_SIMPLEX)
            .setProperty(LayeredMetaDataProvider.CROSSING_MINIMIZATION_STRATEGY,CrossingMinimizationStrategy.INTERACTIVE)
            .setProperty(LayeredMetaDataProvider.THOROUGHNESS, 5000)
            .setProperty(CoreOptions.PADDING, new ElkPadding(100.0, 20.0));

        node.setProperty(CoreOptions.SPACING_NODE_NODE, 400.0)
            .setProperty(CoreOptions.SPACING_EDGE_NODE, 100.0)
            .setProperty(CoreOptions.SPACING_EDGE_EDGE, 100.0)
            .setProperty(LayeredMetaDataProvider.SPACING_NODE_NODE_BETWEEN_LAYERS, 320.0)
            .setProperty(LayeredMetaDataProvider.SPACING_EDGE_NODE_BETWEEN_LAYERS, 80.0)
            .setProperty(LayeredMetaDataProvider.SPACING_EDGE_EDGE_BETWEEN_LAYERS, 60.0);
    }

    public void setNodeProperties(ElkNode node) {
        node.setProperty(CoreOptions.PORT_CONSTRAINTS, PortConstraints.FIXED_POS);
    }

    public void setPortProperties(ElkPort port, boolean isSource) {
        port.setProperty(CoreOptions.PORT_SIDE, isSource ? PortSide.EAST : PortSide.WEST);
    }
}
