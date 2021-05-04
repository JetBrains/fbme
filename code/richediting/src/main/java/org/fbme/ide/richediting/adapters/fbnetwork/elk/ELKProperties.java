package org.fbme.ide.richediting.adapters.fbnetwork.elk;

import org.eclipse.elk.alg.layered.options.*;
import org.eclipse.elk.core.math.ElkMargin;
import org.eclipse.elk.core.math.ElkPadding;
import org.eclipse.elk.core.options.*;
import org.eclipse.elk.graph.ElkNode;
import org.eclipse.elk.graph.ElkPort;

public class ELKProperties {
    public void setRootProperties(ElkNode node) {
        node.setProperty(CoreOptions.ALGORITHM, "org.eclipse.elk.layered");
        node.setProperty(CoreOptions.EDGE_ROUTING, EdgeRouting.ORTHOGONAL);
        node.setProperty(CoreOptions.DIRECTION, Direction.RIGHT);
        node.setProperty(CoreOptions.SEPARATE_CONNECTED_COMPONENTS, false);
        node.setProperty(LayeredMetaDataProvider.NODE_PLACEMENT_STRATEGY, NodePlacementStrategy.NETWORK_SIMPLEX);
        node.setProperty(LayeredMetaDataProvider.THOROUGHNESS, 10);

        node.setProperty(CoreOptions.PORT_CONSTRAINTS, PortConstraints.FREE);

        node.setProperty(CoreOptions.PADDING, new ElkPadding());
        node.setProperty(CoreOptions.SPACING_NODE_NODE, 400.0);
        node.setProperty(CoreOptions.SPACING_PORT_PORT, 0.0);
        node.setProperty(CoreOptions.SPACING_EDGE_NODE, 100.0);
        node.setProperty(CoreOptions.SPACING_EDGE_EDGE, 50.0);
        node.setProperty(LayeredMetaDataProvider.SPACING_NODE_NODE_BETWEEN_LAYERS, 400.0);
        node.setProperty(LayeredMetaDataProvider.SPACING_EDGE_NODE_BETWEEN_LAYERS, 100.0);
        node.setProperty(LayeredMetaDataProvider.SPACING_EDGE_EDGE_BETWEEN_LAYERS, 50.0);
    }

    public void setNodeProperties(ElkNode node) {
        node.setProperty(CoreOptions.PORT_CONSTRAINTS, PortConstraints.FIXED_POS);
    }

    public void setPortProperties(ElkPort port, boolean isSource) {
        port.setProperty(CoreOptions.PORT_SIDE, isSource ? PortSide.EAST : PortSide.WEST);
    }
}
