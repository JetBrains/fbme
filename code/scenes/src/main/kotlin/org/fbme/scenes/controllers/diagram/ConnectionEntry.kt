package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.awt.Rectangle

internal class ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>(
    private val connectionsFacility: ConnectionsFacility<CompT, PortT, ConnT, CursorT, PathT>,
    val connection: ConnT
) {
    val controller: ConnectionController<CursorT, PathT> =
        connectionsFacility.controllerFactory.create(connectionsFacility.scene.editorContext, connection)
    private val pathProvider: (Point, Point) -> PathT = connectionsFacility.connectionSynchronizer.getPath(connection)
    var modelPath: PathT
    var transformedPath: PathT? = null

    fun relayout() {
        val diagramController = connectionsFacility.diagramController
        val sourcePort = diagramController.getSource(connection) ?: error("Source not found")
        val targetPort = diagramController.getTarget(connection) ?: error("Target not found")
        val sourcePortController = diagramController.getPortController(sourcePort)
        val targetPortController = diagramController.getPortController(targetPort)
        modelPath = pathProvider(sourcePortController.modelEndpointPosition, targetPortController.modelEndpointPosition)
        controller.updateCellWithPath(transformedPath ?: modelPath)
        controller.updateCellSelection(isSelected)
    }

    val layoutBounds: Rectangle
        get() {
            val bounds = controller.getBounds(modelPath)
            return if (transformedPath == null) bounds else bounds.union(controller.getBounds(transformedPath!!))
        }
    val cursor: CursorT?
        get() {
            val connectionCursor = connectionsFacility.connectionCursor
            if (connectionCursor != null && connectionCursor.connection == connection) {
                return connectionCursor.cursor
            }
            return null
        }
    val isSelected: Boolean
        get() {
            val myConnectionsSelection = connectionsFacility.connectionsSelection
            val componentsSelection = connectionsFacility.componentsSelection
            val diagramController = connectionsFacility.diagramController
            val sourcePort = diagramController.getSource(connection)
            val targetPort = diagramController.getTarget(connection)
            val isSourceComponentSelected = sourcePort?.let {
                componentsSelection.isSelected(diagramController.getComponent(it))
            } ?: false
            val isTargetComponentSelected = targetPort?.let {
                componentsSelection.isSelected(diagramController.getComponent(it))
            } ?: false
            return myConnectionsSelection.contains(connection) ||
                isSourceComponentSelected ||
                isTargetComponentSelected
        }

    init {
        val diagramController = connectionsFacility.diagramController
        val sourcePort = diagramController.getSource(connection) ?: error("Source not found")
        val targetPort = diagramController.getTarget(connection) ?: error("Target not found")
        val sourcePortController = diagramController.getPortController(sourcePort)
        val targetPortController = diagramController.getPortController(targetPort)
        modelPath = pathProvider(sourcePortController.modelEndpointPosition, targetPortController.modelEndpointPosition)
    }
}
