package org.fbme.scenes.controllers.diagram

import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.scenes.controllers.*
import org.fbme.scenes.controllers.scene.*
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.Point
import java.awt.Rectangle
import java.util.function.BiConsumer
import java.util.function.BiFunction
import java.util.function.Function

class ConnectionsFacility<CompT, PortT, ConnT, CursorT, PathT>(
    val scene: SceneEditor,
    val controllerFactory: ConnectionControllerFactory<ConnT, CursorT, PathT>,
    private val newPathFactory: BiFunction<Point, Point, PathT>,
    private val newPathPainter: BiConsumer<Graphics, PathT>,
    val connectionSynchronizer: ConnectionPathSynchronizer<ConnT, PathT>,
    componentsLayout: ROLayoutModel<CompT>,
    val componentsSelection: SelectionModel<CompT>,
    val diagramController: DiagramController<CompT, PortT, ConnT>,
    connectionsLayer: Layer,
    tracesLayer: Layer,
    val sceneFocus: SceneFocusModel
) {
    private val connections: MutableMap<ConnT, ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>> = HashMap()
    val connectionsSelection: MutableSet<ConnT> = HashSet()
    var connectionCursor: ConnectionCursor<ConnT, CursorT>? = null
    private val focusHandle = FocusHandle {
        connectionsSelection.clear()
        clearSelection()
    }
    private var newConnectionPath: PathT? = null
    private val deleteSelectedConnections: CellAction = object : CellAction {
        override fun getDescriptionText(): String {
            return "Delete selected connections"
        }

        override fun executeInCommand(): Boolean {
            return true
        }

        override fun canExecute(context: EditorContext): Boolean {
            return true
        }

        override fun execute(context: EditorContext) {
            for (connection in connections.values) {
                if (connection.isSelected) {
                    diagramController.removeEdge(connection.connection)
                }
            }
        }
    }

    private fun init() {
        val viewConnections = diagramController.connections
        for (connection in viewConnections) {
            connections[connection] = ConnectionEntry(this@ConnectionsFacility, connection)
        }
    }

    private fun clearSelection() {
        for (connection in connections.values) {
            connection.controller.updateCellSelection(false)
        }
    }

    fun onComponentsMoved(components: Set<CompT>, dx: Int, dy: Int, completed: Boolean) {
        val ports: MutableList<PortT> = ArrayList()
        for (component in components) {
            ports.addAll(diagramController.getPorts(component))
        }
        for ((connectionView, entry) in connections) {
            val sourcePort = diagramController.getSource(connectionView)
            val targetPort = diagramController.getTarget(connectionView)
            val sourceMoved = ports.contains(sourcePort)
            val targetMoved = ports.contains(targetPort)
            if (sourceMoved && targetMoved) {
                val endpointsTransformation = entry.controller.getEndpointsTransformation(entry.modelPath)
                    ?: error("Endpoints transformation failed")
                val sourcePosition = diagramController.getPortController(sourcePort!!).modelEndpointPosition
                val targetPosition = diagramController.getPortController(targetPort!!).modelEndpointPosition
                sourcePosition.translate(dx, dy)
                targetPosition.translate(dx, dy)
                val translatedPath = endpointsTransformation.apply(sourcePosition, targetPosition)
                changePath(entry, connectionView, translatedPath, completed)
                continue
            }
            if (targetMoved) {
                val targetTransformation = entry.controller.getTargetTransformation(entry.modelPath)
                    ?: error("Target endpoint transformation failed")
                val targetPosition = diagramController.getPortController(targetPort!!).modelEndpointPosition
                targetPosition.translate(dx, dy)
                val translatedPath = targetTransformation.apply(targetPosition)
                changePath(entry, connectionView, translatedPath, completed)
                continue
            }
            if (sourceMoved) {
                val sourceTransformation = entry.controller.getSourceTransformation(entry.modelPath)
                    ?: error("Source endpoint transformation failed")
                val sourcePosition = diagramController.getPortController(sourcePort!!).modelEndpointPosition
                sourcePosition.translate(dx, dy)
                val translatedPath = sourceTransformation.apply(sourcePosition)
                changePath(entry, connectionView, translatedPath, completed)
            }
        }
    }

    private fun changePath(
        entry: ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>,
        connectionView: ConnT,
        translatedPath: PathT,
        completed: Boolean
    ) {
        if (completed) {
            connectionSynchronizer.setPath(connectionView, translatedPath)
            entry.transformedPath = null
        } else {
            entry.transformedPath = translatedPath
        }
    }

    inner class MySelectionInitializer : SceneInitializer {
        override fun onAdd() {
            val selection = scene.loadState(SELECTION_KEY) as? Set<ConnT>
            if (selection != null) {
                connectionsSelection.addAll(selection)
                if (selection.isNotEmpty()) {
                    sceneFocus.addFocus(focusHandle)
                }
            }
        }

        override fun onRemove() {
            scene.storeState(SELECTION_KEY, HashSet(connectionsSelection))
        }
    }

    private inner class MyCursorListener : CursorListener {
        override fun onCursorMoved(event: CursorEvent) {
            val x = event.awt.x
            val y = event.awt.y
            for ((key, entry) in connections) {
                val cursor = entry.controller.getCursorAt(entry.modelPath, x, y)
                if (cursor != null) {
                    val freshConnectionCursor = ConnectionCursor<ConnT, CursorT>(key, cursor)
                    if (freshConnectionCursor != connectionCursor) {
                        scene.fireRepaint()
                        connectionCursor = freshConnectionCursor
                    }
                    return
                }
            }
            if (connectionCursor != null) {
                scene.fireRepaint()
                connectionCursor = null
            }
        }
    }

    private inner class MyCellActionProvider : SceneCellActionProvider {
        override val providedActionsTypes: List<CellActionType>
            get() = listOf(CellActionType.BACKSPACE)

        override fun getAction(action: CellActionType): CellAction? {
            return if (action == CellActionType.BACKSPACE) {
                deleteSelectedConnections
            } else null
        }
    }

    private inner class MyLayouter : SceneLayouter {
        override fun relayout() {
            for (connection in connections.values) {
                connection.relayout()
            }
        }

        override val layoutBounds: Rectangle
            get() {
                var bounds = Rectangle(-1, -1)
                for (connection in connections.values) {
                    bounds = bounds.union(connection.layoutBounds)
                }
                return bounds
            }
    }

    private inner class MyPainter : ScenePainter {
        override fun paint(graphics: Graphics2D) {
            for (connection in connections.values) {
                val cursor = connection.cursor
                val path = connection.transformedPath ?: connection.modelPath
                val selected = connection.isSelected || connection.transformedPath != null
                connection.controller.paintConnection(path, cursor, selected, graphics.create())
            }
            if (newConnectionPath != null) {
                graphics.color = MPSColors.DARK_GRAY
                newPathPainter.accept(graphics.create(), newConnectionPath!!)
            }
        }
    }

    private inner class MyTracesPainter : ScenePainter {
        override fun paint(graphics: Graphics2D) {
            for (connection in connections.values) {
                if (connection.transformedPath != null) {
                    connection.controller.paintTrace(connection.modelPath, graphics.create())
                }
            }
        }
    }

    private inner class MyClickListener : ClickEventListener {
        override fun onMouseClicked(event: ClickEvent) {
            var focusCleared = false
            for (connection in connections.values) {
                if (connection.controller.isSelectableAt(connection.modelPath, event.awt.x, event.awt.y)) {
                    if (!focusCleared && !MouseEvents.isMetaDown(event.awt)) {
                        connectionsSelection.clear()
                        sceneFocus.clearFocus()
                        focusCleared = true
                    }
                    if (connectionsSelection.contains(connection.connection)) {
                        connectionsSelection.remove(connection.connection)
                    } else {
                        connectionsSelection.add(connection.connection)
                        sceneFocus.addFocus(focusHandle)
                    }
                    event.consume()
                    scene.fireRepaint()
                }
            }
        }
    }

    private inner class MyCellProvider : EditorCellProvider {
        override val cells: List<EditorCell>
            get() {
                val cells: MutableList<EditorCell> = ArrayList()
                for (connection in connections.values) {
                    val cell = connection.controller.connectionCell
                    if (cell != null) {
                        cells.add(cell)
                    }
                }
                return cells
            }
    }

    private inner class MyDragListener : DragEventListener {
        override fun onDragStarted(event: DragEvent) {
            if (!diagramController.isDiagramEditable) {
                return
            }
            val x = event.awt.x
            val y = event.awt.y
            for (connection in connections.values) {
                val controller = connection.controller
                var pathTransformation = controller.getEdgeTransformation(connection.modelPath, x, y)
                if (pathTransformation != null) {
                    event.consume(ConnectionPathChangeDragEventHandler(x, y, pathTransformation, connection))
                    return
                }
                if (controller.isSourceTransformableAt(connection.modelPath, x, y)) {
                    pathTransformation = controller.getSourceTransformation(connection.modelPath)
                    if (pathTransformation != null) {
                        event.consume(ConnectionSourceChangeDragEventHandler(x, y, pathTransformation, connection))
                        return
                    }
                }
                if (controller.isTargetTransformableAt(connection.modelPath, x, y)) {
                    pathTransformation = controller.getTargetTransformation(connection.modelPath)
                    if (pathTransformation != null) {
                        event.consume(ConnectionTargetChangeDragEventHandler(x, y, pathTransformation, connection))
                        return
                    }
                }
            }
            val port = diagramController.findPort(x, y)
            if (port != null) {
                val setting = diagramController.getPortController(port)
                if (setting.canBeSourcedAt(x, y)) {
                    event.consume(NewConnectionFromSourceDragEventHandler(port))
                } else if (setting.canBeTargetedAt(x, y)) {
                    event.consume(NewConnectionFromTargetDragEventHandler(port))
                }
            }
        }
    }

    private fun sourcePoint(x: Int, y: Int): Point {
        val port = diagramController.findPort(x, y)
        var source = Point(x, y)
        if (port != null) {
            val portSettings = diagramController.getPortController(port)
            if (portSettings.canBeSourcedAt(x, y)) {
                source = portSettings.modelEndpointPosition
            }
        }
        return source
    }

    private fun targetPoint(x: Int, y: Int): Point {
        val port = diagramController.findPort(x, y)
        var target = Point(x, y)
        if (port != null) {
            val portSettings = diagramController.getPortController(port)
            if (portSettings.canBeTargetedAt(x, y)) {
                target = portSettings.modelEndpointPosition
            }
        }
        return target
    }

    private inner class NewConnectionFromSourceDragEventHandler(private val source: PortT) : DragEventHandler {
        private val sourceLocation: Point = diagramController.getPortController(source).modelEndpointPosition

        override fun dragTo(x: Int, y: Int) {
            val target = targetPoint(x, y)
            newConnectionPath = newPathFactory.apply(sourceLocation, target)
            scene.fireRepaint()
        }

        override fun completeAt(x: Int, y: Int) {
            val target = diagramController.findPort(x, y)
            if (target != null) {
                val targetSettings = diagramController.getPortController(target)
                if (targetSettings.canBeTargetedAt(x, y)) {
                    scene.editorContext.repository.modelAccess.executeCommandInEDT {
                        val edge = diagramController.addEdge(source, target) ?: return@executeCommandInEDT
                        val newPath = newPathFactory.apply(sourceLocation, targetSettings.modelEndpointPosition)
                        connectionSynchronizer.setPath(edge, newPath)
                    }
                }
            }
            newConnectionPath = null
            scene.fireRepaint()
        }

        init {
            dragTo(sourceLocation.x, sourceLocation.y)
        }
    }

    private inner class NewConnectionFromTargetDragEventHandler(private val target: PortT) : DragEventHandler {
        private val targetLocation: Point = diagramController.getPortController(target).modelEndpointPosition

        override fun dragTo(x: Int, y: Int) {
            val source = sourcePoint(x, y)
            newConnectionPath = newPathFactory.apply(source, targetLocation)
            scene.fireRepaint()
        }

        override fun completeAt(x: Int, y: Int) {
            val source = diagramController.findPort(x, y)
            if (source != null) {
                val sourceSettings = diagramController.getPortController(source)
                if (sourceSettings.canBeSourcedAt(x, y)) {
                    scene.editorContext.repository.modelAccess.executeCommandInEDT {
                        val edge = diagramController.addEdge(source, target) ?: return@executeCommandInEDT
                        val newPath = newPathFactory.apply(sourceSettings.modelEndpointPosition, targetLocation)
                        connectionSynchronizer.setPath(edge, newPath)
                    }
                }
            }
            newConnectionPath = null
            scene.fireRepaint()
        }

        init {
            dragTo(targetLocation.x, targetLocation.y)
        }
    }

    private inner class ConnectionPathChangeDragEventHandler(
        initialX: Int,
        initialY: Int,
        private val pathTransformation: Function<Point, PathT>,
        private val entry: ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>
    ) : DragEventHandler {
        override fun dragTo(x: Int, y: Int) {
            entry.transformedPath = pathTransformation.apply(Point(x, y))
            scene.fireRelayout()
        }

        override fun completeAt(x: Int, y: Int) {
            scene.editorContext.repository.modelAccess.executeCommandInEDT {
                connectionSynchronizer.setPath(entry.connection, pathTransformation.apply(Point(x, y)))
            }
            entry.transformedPath = null
        }

        init {
            dragTo(initialX, initialY)
        }
    }

    private inner class ConnectionSourceChangeDragEventHandler(
        initialX: Int,
        initialY: Int,
        private val pathTransformation: Function<Point, PathT>,
        private val entry: ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>
    ) : DragEventHandler {
        override fun dragTo(x: Int, y: Int) {
            val source = sourcePoint(x, y)
            entry.transformedPath = pathTransformation.apply(source)
            scene.fireRelayout()
        }

        override fun completeAt(x: Int, y: Int) {
            val port = diagramController.findPort(x, y)
            if (port != null) {
                val portSettings = diagramController.getPortController(port)
                if (portSettings.canBeSourcedAt(x, y)) {
                    scene.editorContext.repository.modelAccess.executeCommandInEDT {
                        val newPath = pathTransformation.apply(portSettings.modelEndpointPosition)
                        connectionSynchronizer.setPath(entry.connection, newPath)
                        diagramController.setSource(entry.connection, port)
                    }
                }
            }
            entry.transformedPath = null
        }

        init {
            dragTo(initialX, initialY)
        }
    }

    private inner class ConnectionTargetChangeDragEventHandler(
        initialX: Int,
        initialY: Int,
        private val pathTransformation: Function<Point, PathT>,
        private val entry: ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>
    ) : DragEventHandler {
        override fun dragTo(x: Int, y: Int) {
            val target = targetPoint(x, y)
            entry.transformedPath = pathTransformation.apply(target)
            scene.fireRelayout()
        }

        override fun completeAt(x: Int, y: Int) {
            val port = diagramController.findPort(x, y)
            if (port != null) {
                val portSettings = diagramController.getPortController(port)
                if (portSettings.canBeTargetedAt(x, y)) {
                    scene.editorContext.repository.modelAccess.executeCommandInEDT {
                        val newPath = pathTransformation.apply(portSettings.modelEndpointPosition)
                        connectionSynchronizer.setPath(entry.connection, newPath)
                        diagramController.setTarget(entry.connection, port)
                    }
                }
            }
            entry.transformedPath = null
            scene.fireRelayout()
        }

        init {
            dragTo(initialX, initialY)
        }
    }

    fun getController(connection: ConnT): ConnectionController<CursorT, PathT> {
        val entry = connections[connection] ?: error("Connection entry not found")
        return entry.controller
    }

    companion object {
        private val SELECTION_KEY = SceneStateKey<Set<*>>("conn-selection")
    }

    init {
        componentsLayout.addListener(object : ROLayoutModel.Listener<CompT> {
            override fun onComponentAdded(component: CompT, x: Int, y: Int) {}
            override fun onComponentRemoved(component: CompT) {}
            override fun onComponentsMoved(components: Set<CompT>, dx: Int, dy: Int, completed: Boolean) {
                this@ConnectionsFacility.onComponentsMoved(components, dx, dy, completed)
            }
        })
        init()
        scene.addLayouter(MyLayouter())
        scene.addInitializer(MySelectionInitializer())
        scene.addCellProvider(connectionsLayer, MyCellProvider())
        scene.addCellActionProvider(MyCellActionProvider())
        scene.addCursorListener(MyCursorListener())
        scene.addPainter(connectionsLayer, MyPainter())
        scene.addClickListener(connectionsLayer, MyClickListener())
        scene.addDragListener(connectionsLayer, MyDragListener())
        scene.addPainter(tracesLayer, MyTracesPainter())
    }
}
