package org.fbme.ide.richediting.adapters.fbnetwork.layout;

import org.eclipse.elk.alg.layered.options.LayeredMetaDataProvider;
import org.eclipse.elk.alg.layered.options.LayeredOptions;
import org.eclipse.elk.alg.layered.options.NodePlacementStrategy;
import org.eclipse.elk.core.options.*;
import org.eclipse.elk.graph.ElkNode;
import org.eclipse.elk.graph.ElkPort;

public class FBElkProperties {
    public void setRootProperties(ElkNode node) {
        node.setProperty(CoreOptions.ALGORITHM, "org.eclipse.elk.layered");
        node.setProperty(LayeredOptions.EDGE_ROUTING, EdgeRouting.ORTHOGONAL);
        node.setProperty(CoreOptions.DIRECTION, Direction.RIGHT);
        node.setProperty(LayeredMetaDataProvider.NODE_PLACEMENT_STRATEGY, NodePlacementStrategy.NETWORK_SIMPLEX);
    }

    public void setNodeProperties(ElkNode node) {
        node.setProperty(CoreOptions.PORT_CONSTRAINTS, PortConstraints.FIXED_POS);
    }

    public void setPortProperties(ElkPort port, boolean isSource) {
        port.setProperty(CoreOptions.PORT_SIDE, isSource ? PortSide.EAST : PortSide.WEST);
    }
}
