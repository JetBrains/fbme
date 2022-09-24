package org.fbme.ide.richediting.adapters.ecc.elk

import org.eclipse.elk.alg.layered.options.LayeredMetaDataProvider
import org.eclipse.elk.alg.layered.options.NodePlacementStrategy
import org.eclipse.elk.core.math.ElkPadding
import org.eclipse.elk.core.options.CoreOptions
import org.eclipse.elk.core.options.Direction
import org.eclipse.elk.core.options.EdgeRouting
import org.eclipse.elk.core.options.PortConstraints
import org.eclipse.elk.graph.ElkNode

class ELKProperties {
    fun setRootProperties(node: ElkNode) {
        node.setProperty(CoreOptions.ALGORITHM, "org.eclipse.elk.layered")
        node.setProperty(CoreOptions.EDGE_ROUTING, EdgeRouting.SPLINES)
        node.setProperty(CoreOptions.DIRECTION, Direction.RIGHT)
        node.setProperty(CoreOptions.SEPARATE_CONNECTED_COMPONENTS, false)
        node.setProperty(LayeredMetaDataProvider.NODE_PLACEMENT_STRATEGY, NodePlacementStrategy.NETWORK_SIMPLEX)
        node.setProperty(LayeredMetaDataProvider.THOROUGHNESS, 10)
        node.setProperty(CoreOptions.PORT_CONSTRAINTS, PortConstraints.FREE)
        node.setProperty(CoreOptions.PADDING, ElkPadding())
        node.setProperty(CoreOptions.SPACING_NODE_NODE, 400.0)
        node.setProperty(CoreOptions.SPACING_PORT_PORT, 0.0)
        node.setProperty(CoreOptions.SPACING_EDGE_NODE, 100.0)
        node.setProperty(CoreOptions.SPACING_EDGE_EDGE, 50.0)
        node.setProperty(LayeredMetaDataProvider.SPACING_NODE_NODE_BETWEEN_LAYERS, 400.0)
        node.setProperty(LayeredMetaDataProvider.SPACING_EDGE_NODE_BETWEEN_LAYERS, 100.0)
        node.setProperty(LayeredMetaDataProvider.SPACING_EDGE_EDGE_BETWEEN_LAYERS, 50.0)
    }
}
