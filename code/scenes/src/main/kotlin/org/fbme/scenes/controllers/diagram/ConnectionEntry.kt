package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.awt.Rectangle
import java.util.function.BiFunction

internal class ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>(
    private val connectionsFacility: ConnectionsFacility<CompT, PortT, ConnT, CursorT, PathT>,
    val connection: ConnT
) {
    val controller: ConnectionController<CursorT, PathT> =
        connectionsFacility.controllerFactory.create(connectionsFacility.scene.editorContext, connection)
    private val pathProvider: BiFunction<Point, Point, PathT> =
        connectionsFacility.connectionSynchronizer.getPath(connection)
    var modelPath: PathT
    var transformedPath: PathT? = null

    fun relayout() {
        val diagramController = connectionsFacility.diagramController
        val sourcePort = diagramController.getPortController(
            diagramController.getSource(connection)
        )
        val targetPort = diagramController.getPortController(
            diagramController.getTarget(connection)
        )
        modelPath = pathProvider.apply(sourcePort.modelEndpointPosition, targetPort.modelEndpointPosition)
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
            return myConnectionsSelection.contains(connection) ||
                    componentsSelection.isSelected(
                        diagramController.getComponent(
                            diagramController.getSource(
                                connection
                            )
                        )
                    ) ||
                    componentsSelection.isSelected(
                        diagramController.getComponent(
                            diagramController.getTarget(
                                connection
                            )
                        )
                    )
        }

    init {
        val diagramController = connectionsFacility.diagramController
        val sourcePort = diagramController.getPortController(
            diagramController.getSource(connection)
        )
        val targetPort = diagramController.getPortController(
            diagramController.getTarget(connection)
        )
        modelPath = pathProvider.apply(sourcePort.modelEndpointPosition, targetPort.modelEndpointPosition)
    }
}