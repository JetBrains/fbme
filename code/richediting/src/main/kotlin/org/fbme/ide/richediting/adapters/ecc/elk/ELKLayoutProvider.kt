package org.fbme.ide.richediting.adapters.ecc.elk

import org.eclipse.elk.alg.layered.options.LayeredMetaDataProvider
import org.eclipse.elk.core.IGraphLayoutEngine
import org.eclipse.elk.core.RecursiveGraphLayoutEngine
import org.eclipse.elk.core.data.ILayoutMetaDataProvider
import org.eclipse.elk.core.data.LayoutMetaDataService
import org.eclipse.elk.core.options.CoreOptions
import org.eclipse.elk.core.util.NullElkProgressMonitor
import org.eclipse.elk.graph.ElkEdge
import org.eclipse.elk.graph.ElkNode
import org.eclipse.elk.graph.util.ElkGraphUtil
import org.fbme.ide.richediting.adapters.ecc.ECTransitionCursor
import org.fbme.ide.richediting.adapters.ecc.ECTransitionPath
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentController
import org.fbme.scenes.controllers.components.ComponentSynchronizer
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionPathSynchronizer
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramController
import org.fbme.scenes.controllers.diagram.DiagramFacility
import org.slf4j.LoggerFactory
import java.awt.Point
import java.awt.Rectangle

class ELKLayoutProvider(
    diagramFacility: DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point>,
    componentsFacility: ComponentsFacility<StateDeclaration, Point>,
    connectionsFacility: ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath>,
    viewpoint: SceneViewpoint
) {
    private val diagramFacility: DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point>
    private val componentsFacility: ComponentsFacility<StateDeclaration, Point>
    private val connectionsFacility: ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath>
    private val viewpoint: SceneViewpoint
    private val diagramController: DiagramController<StateDeclaration, StateDeclaration, StateTransition>
    private val componentSynchronizer: ComponentSynchronizer<StateDeclaration, Point>
    private val connectionSynchronizer: ConnectionPathSynchronizer<StateTransition, ECTransitionPath>
    private val layoutEngine: IGraphLayoutEngine = RecursiveGraphLayoutEngine()
    private val layoutProviders: List<ILayoutMetaDataProvider> = listOf(CoreOptions(), LayeredMetaDataProvider())
    private val layoutPropertiesProvider = ELKProperties()
    fun relayout() {
        try {
            LayoutMetaDataService.getInstance().registerLayoutMetaDataProviders(*layoutProviders.toTypedArray())
            val nodes: MutableMap<StateDeclaration, ElkNode> = HashMap()
            val edges: MutableList<Pair<StateTransition, ElkEdge>> = ArrayList()
            val root = createElkGraph(nodes, edges)
            layoutEngine.layout(root, NullElkProgressMonitor())
            applyLayout(nodes, edges)
        } catch (t: Throwable) {
            LOG.error("error when relayout")
        }
    }

    private fun createElkGraph(
        nodes: MutableMap<StateDeclaration, ElkNode>,
        edges: MutableList<Pair<StateTransition, ElkEdge>>
    ): ElkNode {
        val root = ElkGraphUtil.createGraph()
        val node = ElkGraphUtil.createNode(root)
        node.setLocation(0.0, 0.0)
        layoutPropertiesProvider.setRootProperties(node)
        processComponents(node, nodes)
        processConnections(node, edges, nodes)
        return root
    }

    private fun processComponents(parent: ElkNode, nodes: MutableMap<StateDeclaration, ElkNode>) {
        for (component in diagramController.components) {
            val componentController: ComponentController<Point> = componentsFacility.getController(component)
            val componentPosition: Point = componentsFacility.getModelForm(component)
            val componentBounds: Rectangle = componentController.getBounds(componentPosition)
            val x = viewpoint.translateFromEditorX(componentBounds.x)
            val y = viewpoint.translateFromEditorY(componentBounds.y)
            val width = viewpoint.fromEditorDimension(componentBounds.width)
            val height = viewpoint.fromEditorDimension(componentBounds.height)
            val node = ElkGraphUtil.createNode(parent)
            node.setLocation(x.toDouble(), y.toDouble())
            node.setDimensions(width.toDouble(), height.toDouble())
            nodes[component] = node
        }
    }

    private fun processConnections(
        parent: ElkNode,
        edges: MutableList<Pair<StateTransition, ElkEdge>>,
        nodes: Map<StateDeclaration, ElkNode>
    ) {
        for (connection in diagramController.connections) {
            val source = diagramController.getSource(connection) ?: continue
            val target = diagramController.getTarget(connection) ?: continue
            val elkEdge = ElkGraphUtil.createSimpleEdge(nodes[source], nodes[target])
            elkEdge.containingNode = parent
            val controller = connectionsFacility.getController(connection)
            val bounds: Rectangle = controller.getBounds(
                ECTransitionPath(
                    Point(source.x, source.y),
                    Point(connection.centerX, connection.centerY),
                    Point(target.x, target.y)
                )
            )
            val elkLabel = ElkGraphUtil.createLabel("condition-text".repeat(10), elkEdge)
            elkLabel.height = viewpoint.fromEditorDimension(bounds.height).toDouble()
            elkLabel.width = viewpoint.fromEditorDimension(bounds.width).toDouble()
            edges.add(Pair(connection, elkEdge))
        }
    }

    private fun applyLayout(nodes: Map<StateDeclaration, ElkNode>, edges: List<Pair<StateTransition, ElkEdge>>) {
        applyNodeLayout(nodes)
        applyEdgeLayout(edges)
    }

    private fun applyNodeLayout(nodes: Map<StateDeclaration, ElkNode>) {
        nodes.forEach { (stateDeclaration: StateDeclaration, elkNode: ElkNode) ->
            val x = viewpoint.translateToEditorX(
                elkNode.x.toInt()
            )
            val y = viewpoint.translateToEditorY(elkNode.y.toInt())
            componentSynchronizer.setForm(stateDeclaration, Point(x, y))
        }
    }

    private fun applyEdgeLayout(edges: List<Pair<StateTransition, ElkEdge>>) {
        for ((first, elkEdge) in edges) {
            val label = elkEdge.labels[0]
            val x = viewpoint.translateToEditorX((label.x + label.width / 2).toInt())
            val y = viewpoint.translateToEditorY((label.y + label.height / 2).toInt())
            first.centerX = viewpoint.translateFromEditorX(x)
            first.centerY = viewpoint.translateFromEditorY(y)
        }
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(ELKLayoutProvider::class.java)
    }

    init {
        this.diagramFacility = diagramFacility
        this.componentsFacility = componentsFacility
        this.connectionsFacility = connectionsFacility
        diagramController = diagramFacility.diagramController
        componentSynchronizer = componentsFacility.componentSynchronizer
        connectionSynchronizer = connectionsFacility.connectionSynchronizer
        this.viewpoint = viewpoint
    }
}
