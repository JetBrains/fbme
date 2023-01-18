package org.fbme.ide.richediting.adapters.fbnetwork.elk

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
import org.fbme.ide.richediting.adapters.fbnetwork.InlineValueController.Companion.INNER_BORDER_PADDING
import org.fbme.ide.richediting.adapters.fbnetwork.InlineValueController.Companion.OPPOSITE_PORT_PADDING
import org.fbme.ide.richediting.inspections.NetworkInspectionsFacility
import org.fbme.ide.richediting.viewmodel.*
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramFacility
import org.junit.Assert
import java.awt.Point
import java.awt.Rectangle

class ELKLayoutProvider(
    diagramFacility: DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>,
    private val componentsFacility: ComponentsFacility<NetworkComponentView, Point>,
    connectionsFacility: ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>,
    private val inspectionsFacility: NetworkInspectionsFacility,
    private val viewpoint: SceneViewpoint
) {
    private val diagramController = diagramFacility.diagramController
    private val componentSynchronizer = componentsFacility.componentSynchronizer
    private val connectionSynchronizer = connectionsFacility.connectionSynchronizer
    private val layoutEngine: IGraphLayoutEngine = RecursiveGraphLayoutEngine()
    private val layoutProviders = listOf(CoreOptions(), LayeredMetaDataProvider())
    private val layoutPropertiesProvider = ELKProperties()

    fun relayout() {
        LayoutMetaDataService.getInstance().registerLayoutMetaDataProviders(*layoutProviders.toTypedArray())
        val nodesMap: MutableMap<FunctionBlockView, ElkNode> = mutableMapOf()
        val mapViewPort: MutableMap<NetworkPortView, ElkPort> = HashMap()
        val edgesMap: MutableMap<NetworkConnectionView, ElkEdge> = mutableMapOf()
        val endpointsMap: MutableMap<InterfaceEndpointView, ElkPort> = mutableMapOf()
        val root = createElkGraph(nodesMap, edgesMap, endpointsMap, mapViewPort)
        layoutEngine.layout(root, NullElkProgressMonitor())
        applyLayout(nodesMap, endpointsMap, edgesMap)
    }

    private fun createElkGraph(
        nodesMap: MutableMap<FunctionBlockView, ElkNode>,
        edgesMap: MutableMap<NetworkConnectionView, ElkEdge>,
        endpointsMap: MutableMap<InterfaceEndpointView, ElkPort>,
        mapViewPort: MutableMap<NetworkPortView, ElkPort>
    ): ElkNode {
        val root = ElkGraphUtil.createGraph()
        val node = ElkGraphUtil.createNode(root)
        node.setLocation(0.0, 0.0)
        layoutPropertiesProvider.setRootProperties(node)
        processComponents(node, nodesMap, endpointsMap, mapViewPort)
        processConnections(node, mapViewPort, edgesMap)
        return root
    }

    private fun processConnections(
        parent: ElkNode,
        mapViewPort: Map<NetworkPortView, ElkPort>,
        edges: MutableMap<NetworkConnectionView, ElkEdge>
    ) {
        val connections = diagramController.connections
        for (connection in connections) {
            val sourceElkPort = mapViewPort[diagramController.getSource(connection)]
            val targetElkPort = mapViewPort[diagramController.getTarget(connection)]
            val elkEdge = ElkGraphUtil.createSimpleEdge(sourceElkPort, targetElkPort)
            elkEdge.containingNode = parent
            edges[connection] = elkEdge
        }
    }

    private fun processComponents(
        parent: ElkNode,
        nodesMap: MutableMap<FunctionBlockView, ElkNode>,
        endpointsMap: MutableMap<InterfaceEndpointView, ElkPort>,
        mapViewPort: MutableMap<NetworkPortView, ElkPort>
    ) {
        val components = diagramController.components
        val endpoints = components.filterIsInstance<InterfaceEndpointView>()
        val functionBlocks = components.filterIsInstance<FunctionBlockView>()
        val inlineValues = components.filterIsInstance<InlineValueView>()

        for (endpoint in endpoints) {
            val bounds = getBounds(endpoint)
            val port = ElkGraphUtil.createPort(parent)
            port.setDimensions(bounds.getWidth(), bounds.getHeight())
            layoutPropertiesProvider.setPortProperties(port, endpoint.isSource)
            mapViewPort[endpoint] = port
            endpointsMap[endpoint] = port
        }

        for (functionBlock in functionBlocks) {
            val bounds = getBounds(functionBlock)
            val elkNode = ElkGraphUtil.createNode(parent)
            elkNode.setLocation(bounds.getX(), bounds.getY())
            elkNode.setDimensions(bounds.getWidth(), bounds.getHeight())
            layoutPropertiesProvider.setNodeProperties(elkNode)
            val ports = diagramController.getPorts(functionBlock) as Set<FunctionBlockPortView>
            for (port in ports) {
                val portBounds = getBounds(port)
                val elkPort = ElkGraphUtil.createPort(elkNode)
                elkPort.setLocation((portBounds.x - bounds.x).toDouble(), (portBounds.y - bounds.y).toDouble())
                elkPort.setDimensions(portBounds.getWidth(), portBounds.getHeight())
                layoutPropertiesProvider.setPortProperties(elkPort, port.isSource)
                mapViewPort[port] = elkPort
            }
            nodesMap[functionBlock] = elkNode
        }

        for (inlineValue in inlineValues) {
            val bounds = getBounds(inlineValue)
            val functionBlock = inlineValue.opposite.component
            val elkNode = nodesMap[functionBlock]
            val port = ElkGraphUtil.createPort(elkNode)
            val padding = OPPOSITE_PORT_PADDING + 2 * INNER_BORDER_PADDING
            port.setDimensions(bounds.getWidth() + padding, bounds.getHeight())
            val fbBounds = getBounds(functionBlock)
            port.setLocation(bounds.getX() - fbBounds.getX(), bounds.getY() - fbBounds.getY())
            layoutPropertiesProvider.setPortProperties(port, true)
            mapViewPort[inlineValue] = port
        }
    }

    private fun getBounds(port: FunctionBlockPortView): Rectangle {
        val componentPortController = diagramController.getPortController(port)
        val componentPortBounds = componentPortController.bounds
        return viewpoint.fromEditor(componentPortBounds)
    }

    private fun getBounds(endpoint: InterfaceEndpointView): Rectangle {
        val componentController = componentsFacility.getController(endpoint)
        val componentPosition = componentsFacility.getModelForm(endpoint)
        val componentBounds = componentController.getBounds(componentPosition)
        return viewpoint.fromEditor(componentBounds)
    }

    private fun getBounds(functionBlock: FunctionBlockView): Rectangle {
        val componentController = componentsFacility.getController(functionBlock)
        val componentPosition = componentsFacility.getModelForm(functionBlock)
        val componentBounds = componentController.getBounds(componentPosition)
        return viewpoint.fromEditor(componentBounds)
    }

    private fun getBounds(inlineValue: InlineValueView): Rectangle {
        val componentController = inspectionsFacility.componentProvider(inlineValue)
        val componentPosition = inspectionsFacility.layoutModel.getActivePosition(inlineValue)
        val componentBounds = componentController.getBounds(componentPosition)
        return viewpoint.fromEditor(componentBounds)
    }

    private fun applyLayout(
        nodes: Map<FunctionBlockView, ElkNode>,
        endpoints: Map<InterfaceEndpointView, ElkPort>,
        edges: Map<NetworkConnectionView, ElkEdge>
    ) {
        applyNodeLayout(nodes)
        applyEndpointLayout(endpoints)
        applyEdgeLayout(edges)
    }

    private fun applyEndpointLayout(endpointsMap: Map<InterfaceEndpointView, ElkPort>) {
        for ((endpoint, elkPort) in endpointsMap) {
            val x = viewpoint.translateToEditorX(elkPort.x.toInt())
            val y = viewpoint.translateToEditorY(elkPort.y.toInt())
            componentSynchronizer.setForm(endpoint, Point(x, y))
        }
    }

    private fun applyNodeLayout(nodesMap: Map<FunctionBlockView, ElkNode>) {
        for ((functionBlock, elkNode) in nodesMap) {
            val x = viewpoint.translateToEditorX(elkNode.x.toInt())
            val y = viewpoint.translateToEditorY(elkNode.y.toInt())
            componentSynchronizer.setForm(functionBlock, Point(x, y))
        }
    }

    private fun applyEdgeLayout(edgesMap: Map<NetworkConnectionView, ElkEdge>) {
        for ((connection, elkEdge) in edgesMap) {
            val points: List<Point> = getPointsFromEdge(elkEdge)
            assert(points.size >= 2 && points.size % 2 == 0)
            val connectionPath = getConnectionPathFromPoints(points)
            connectionSynchronizer.setPath(connection, connectionPath)
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
