package org.fbme.ide.richediting.adapters.fbnetwork.elk

import com.intellij.openapi.util.Pair
import org.eclipse.elk.alg.layered.options.LayeredMetaDataProvider
import org.eclipse.elk.core.IGraphLayoutEngine
import org.eclipse.elk.core.RecursiveGraphLayoutEngine
import org.eclipse.elk.core.data.LayoutMetaDataService
import org.eclipse.elk.core.options.CoreOptions
import org.eclipse.elk.core.util.NullElkProgressMonitor
import org.eclipse.elk.graph.ElkEdge
import org.eclipse.elk.graph.ElkNode
import org.eclipse.elk.graph.ElkPort
import org.eclipse.elk.graph.util.ElkGraphUtil
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath
import org.fbme.ide.richediting.viewmodel.*
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramFacility
import org.junit.Assert
import java.awt.Point

class ELKLayoutProvider(
    diagramFacility: DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>,
    private val componentsFacility: ComponentsFacility<NetworkComponentView, Point>,
    connectionsFacility: ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>,
    private val viewpoint: SceneViewpoint
) {
    //    private static final Logger LOG = LogManager.getLogger(ELKLayoutProvider.class);
    private val diagramController = diagramFacility.diagramController
    private val componentSynchronizer = componentsFacility.componentSynchronizer
    private val connectionSynchronizer = connectionsFacility.connectionSynchronizer
    private val layoutEngine: IGraphLayoutEngine = RecursiveGraphLayoutEngine()
    private val layoutProviders = listOf(CoreOptions(), LayeredMetaDataProvider())
    private val layoutPropertiesProvider = ELKProperties()
    fun relayout() {
        try {
            LayoutMetaDataService.getInstance().registerLayoutMetaDataProviders(*layoutProviders.toTypedArray())
            val nodes: MutableList<Pair<NetworkComponentView, ElkNode>> = ArrayList()
            val mapViewPort: MutableMap<NetworkPortView, ElkPort> = HashMap()
            val edges: MutableList<Pair<NetworkConnectionView, ElkEdge>> = ArrayList()
            val endpoints: MutableList<Pair<InterfaceEndpointView, ElkPort>> = ArrayList()
            val root = createElkGraph(nodes, edges, endpoints, mapViewPort)
            layoutEngine.layout(root, NullElkProgressMonitor())
            applyLayout(nodes, endpoints, edges)
        } catch (t: Throwable) {
//            LOG.error("error when relayout");
        }
    }

    private fun createElkGraph(
        nodes: MutableList<Pair<NetworkComponentView, ElkNode>>,
        edges: MutableList<Pair<NetworkConnectionView, ElkEdge>>,
        endpoints: MutableList<Pair<InterfaceEndpointView, ElkPort>>,
        mapViewPort: MutableMap<NetworkPortView, ElkPort>
    ): ElkNode {
        val root = ElkGraphUtil.createGraph()
        val node = ElkGraphUtil.createNode(root)
        node.setLocation(0.0, 0.0)
        layoutPropertiesProvider.setRootProperties(node)
        processComponents(node, nodes, endpoints, mapViewPort)
        processConnections(node, mapViewPort, edges)
        return root
    }

    private fun processConnections(
        parent: ElkNode,
        mapViewPort: Map<NetworkPortView, ElkPort>,
        edges: MutableList<Pair<NetworkConnectionView, ElkEdge>>
    ) {
        for (connection in diagramController.connections) {
            val sourceElkPort = mapViewPort[diagramController.getSource(connection)]
            val targetElkPort = mapViewPort[diagramController.getTarget(connection)]
            val elkEdge = ElkGraphUtil.createSimpleEdge(sourceElkPort, targetElkPort)
            elkEdge.containingNode = parent
            edges.add(Pair(connection, elkEdge))
        }
    }

    private fun processComponents(
        parent: ElkNode,
        nodes: MutableList<Pair<NetworkComponentView, ElkNode>>,
        endpoints: MutableList<Pair<InterfaceEndpointView, ElkPort>>,
        mapViewPort: MutableMap<NetworkPortView, ElkPort>
    ) {
        for (component in diagramController.components) {
            val componentController = componentsFacility.getController(component)
            val componentPosition = componentsFacility.getModelForm(component)
            val componentBounds = componentController.getBounds(componentPosition)
            val x = viewpoint.translateFromEditorX(componentBounds.x)
            val y = viewpoint.translateFromEditorY(componentBounds.y)
            val width = viewpoint.fromEditorDimension(componentBounds.width)
            val height = viewpoint.fromEditorDimension(componentBounds.height)
            if (component is InterfaceEndpointView) {
                val port = ElkGraphUtil.createPort(parent)
                port.setDimensions(width.toDouble(), height.toDouble())
                layoutPropertiesProvider.setPortProperties(port, component.isSource)
                mapViewPort[component] = port
                endpoints.add(Pair(component, port))
                continue
            }
            val node = ElkGraphUtil.createNode(parent)
            node.setLocation(x.toDouble(), y.toDouble())
            node.setDimensions(width.toDouble(), height.toDouble())
            layoutPropertiesProvider.setNodeProperties(node)
            for (componentPort in diagramController.getPorts(component)) {
                val componentPortController = diagramController.getPortController(componentPort)
                val componentPortBounds = componentPortController.bounds
                val portX = viewpoint.translateFromEditorX(componentPortBounds.x)
                val portY = viewpoint.translateFromEditorY(componentPortBounds.y)
                val portWidth = viewpoint.fromEditorDimension(componentPortBounds.width)
                val portHeight = viewpoint.fromEditorDimension(componentPortBounds.height)
                val port = ElkGraphUtil.createPort(node)
                port.setLocation((portX - x).toDouble(), (portY - y).toDouble())
                port.setDimensions(portWidth.toDouble(), portHeight.toDouble())
                if (componentPort is FunctionBlockPortView) {
                    layoutPropertiesProvider.setPortProperties(port, componentPort.isSource)
                }
                mapViewPort[componentPort] = port
            }
            nodes.add(Pair(component, node))
        }
    }

    private fun applyLayout(
        nodes: List<Pair<NetworkComponentView, ElkNode>>,
        endpoints: List<Pair<InterfaceEndpointView, ElkPort>>,
        edges: List<Pair<NetworkConnectionView, ElkEdge>>
    ) {
        applyNodeLayout(nodes)
        applyEndpointLayout(endpoints)
        applyEdgeLayout(edges)
    }

    private fun applyEndpointLayout(endpoints: List<Pair<InterfaceEndpointView, ElkPort>>) {
        for (endpoint in endpoints) {
            val elkPort = endpoint.second
            val x = viewpoint.translateToEditorX(elkPort.x.toInt())
            val y = viewpoint.translateToEditorY(elkPort.y.toInt())
            componentSynchronizer.setForm(endpoint.first, Point(x, y))
        }
    }

    private fun applyNodeLayout(nodes: List<Pair<NetworkComponentView, ElkNode>>) {
        for (node in nodes) {
            val elkNode = node.second
            val x = viewpoint.translateToEditorX(elkNode.x.toInt())
            val y = viewpoint.translateToEditorY(elkNode.y.toInt())
            componentSynchronizer.setForm(node.first, Point(x, y))
        }
    }

    private fun applyEdgeLayout(edges: List<Pair<NetworkConnectionView, ElkEdge>>) {
        for (edge in edges) {
            val elkEdge = edge.second
            val points: List<Point> = getPointsFromEdge(elkEdge)
            Assert.assertTrue(points.size >= 2 && points.size % 2 == 0)
            val connectionPath = getConnectionPathFromPoints(points)
            connectionSynchronizer.setPath(edge.first, connectionPath)
        }
    }

    private fun getPointsFromEdge(elkEdge: ElkEdge): ArrayList<Point> {
        val points = ArrayList<Point>()
        for (section in elkEdge.sections) {
            val startX = viewpoint.translateToEditorX(section.startX.toInt())
            val startY = viewpoint.translateToEditorY(section.startY.toInt())
            points.add(Point(startX, startY))
            for (bendPoint in section.bendPoints) {
                val x = viewpoint.translateToEditorX(bendPoint.x.toInt())
                val y = viewpoint.translateToEditorY(bendPoint.y.toInt())
                points.add(Point(x, y))
            }
            val endX = viewpoint.translateToEditorX(section.endX.toInt())
            val endY = viewpoint.translateToEditorY(section.endY.toInt())
            points.add(Point(endX, endY))
        }
        return points
    }

    private fun getConnectionPathFromPoints(points: List<Point>): FBConnectionPath {
        val count = points.size
        Assert.assertTrue(count >= 2 && count % 2 == 0)
        if (count > 6) {
            return FBConnectionPath(
                points[0],
                points[points.size - 1],
                points.subList(1, points.size - 1).toMutableList()
            )
        }
        var x1 = 0
        var y = 0
        var x2 = 0
        var pathKind = ConnectionPath.Kind.Straight
        if (count > 2) {
            x1 = points[1].x
            pathKind = ConnectionPath.Kind.TwoAngles
            if (count > 4) {
                x2 = points[count - 2].x
                y = points[2].y
                pathKind = ConnectionPath.Kind.FourAngles
            }
        }
        return FBConnectionPath(points[0], points[count - 1], pathKind, x1, y, x2)
    }
}