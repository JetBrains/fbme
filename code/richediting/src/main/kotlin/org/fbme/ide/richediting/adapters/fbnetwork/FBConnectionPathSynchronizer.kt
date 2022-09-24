package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.*
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.lib.iec61499.fbnetwork.LongConnectionPath
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionPathSynchronizer
import org.fbme.scenes.controllers.diagram.DiagramController
import java.awt.Point
import java.awt.Rectangle

class FBConnectionPathSynchronizer(
    private val viewpoint: SceneViewpoint,
    private val scale: Float,
    private val expandedComponentsController: ExpandedComponentsController,
    private val componentsFacility: ComponentsFacility<NetworkComponentView, Point>,
    private val diagramController: DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView>
) : ConnectionPathSynchronizer<NetworkConnectionView, FBConnectionPath> {

    override fun getPath(connection: NetworkConnectionView): (Point, Point) -> FBConnectionPath {
        val path = connection.connectionPath
        val dx1 = (scale * path.dX1).toInt()
        val dy = (scale * path.dY).toInt()
        val dx2 = (scale * path.dX2).toInt()
        return { sourcePosition: Point, targetPosition: Point ->
            val x1 = sourcePosition.x + viewpoint.toEditorDimension(dx1)
            val y = sourcePosition.y + viewpoint.toEditorDimension(dy)
            val x2 = targetPosition.x - viewpoint.toEditorDimension(dx2)
            when (path.kind) {
                ConnectionPath.Kind.Straight -> {
                    val fbConnectionPath = FBConnectionPath(sourcePosition, targetPosition)
                    val fbConnectionPathWithOffset = getFBConnectionPathWithOffset(connection, fbConnectionPath)
                    getBrokenConnectionIfNecessary(connection, fbConnectionPathWithOffset)
                }

                ConnectionPath.Kind.TwoAngles -> {
                    val editorBendPoints = mutableListOf(
                        Point(x1, sourcePosition.y),
                        Point(x1, targetPosition.y)
                    )
                    val fbConnectionPath = FBConnectionPath(sourcePosition, targetPosition, editorBendPoints)
                    val fbConnectionPathWithOffset = getFBConnectionPathWithOffset(connection, fbConnectionPath)
                    getBrokenConnectionIfNecessary(connection, fbConnectionPathWithOffset)
                }

                ConnectionPath.Kind.FourAngles -> {
                    val editorBendPoints = mutableListOf(
                        Point(x1, sourcePosition.y),
                        Point(x1, y),
                        Point(x2, y),
                        Point(x2, targetPosition.y)
                    )
                    val fbConnectionPath = FBConnectionPath(sourcePosition, targetPosition, editorBendPoints)
                    val fbConnectionPathWithOffset = getFBConnectionPathWithOffset(connection, fbConnectionPath)
                    getBrokenConnectionIfNecessary(connection, fbConnectionPathWithOffset)
                }

                ConnectionPath.Kind.MoreThanFour -> {
                    check(path is LongConnectionPath)
                    val editorBendPoints = editorBendPoints(path)
                    val fbConnectionPath = FBConnectionPath(sourcePosition, targetPosition, editorBendPoints)
                    val fbConnectionPathWithOffset = getFBConnectionPathWithOffset(connection, fbConnectionPath)
                    getBrokenConnectionIfNecessary(connection, fbConnectionPathWithOffset)
                }
            }
        }
    }

    private fun getBrokenConnectionIfNecessary(
        connection: NetworkConnectionView,
        fbConnectionPath: FBConnectionPath,
        index: Int = 0
    ): FBConnectionPath {
        if (index >= expandedComponentsController.expandedFBs.size ||
            diagramController.getSource(connection) == null ||
            diagramController.getSource(connection) is InlineValueView ||
            diagramController.getTarget(connection) == null
        ) {
            return fbConnectionPath
        }
        val padding = viewpoint.toEditorDimension(50)
        val expandedFBs = expandedFBsSortedByLeftBounds()

        return withConnectionData(connection, fbConnectionPath) {
            when (fbConnectionPath.pathKind) {
                ConnectionPath.Kind.Straight -> {
                    for (i in index until expandedFBs.size) {
                        val (expandedFB, expandingData) = expandedFBs[i]
                        val newBendPoints = mutableListOf<Point>()
                        val maxDy = 0

                        withExpandedFBData(expandedFB, expandingData) {
                            if (!hasSourceShiftByY() && !hasTargetShiftByY() && bounds.bottom - dy < sourcePosition.y) {
                                if (sourcePosition.x < bounds.left && bounds.right < targetPosition.x) {
                                    newBendPoints.add(Point(bounds.left - padding, sourcePosition.y))
                                    newBendPoints.add(Point(bounds.left - padding, sourcePosition.y + dy))
                                    newBendPoints.add(Point(bounds.right + padding, sourcePosition.y + dy))
                                    newBendPoints.add(Point(bounds.right + padding, targetPosition.y))
                                }
                            } else if (hasSourceShiftByY() && !hasTargetShiftByY()) {
                                if (sourcePosition.x < bounds.right && bounds.right < targetPosition.x) {
                                    newBendPoints.add(Point(bounds.right + padding, sourcePosition.y))
                                    newBendPoints.add(Point(bounds.right + padding, targetPosition.y))
                                } else {
                                    newBendPoints.add(Point(sourcePosition.x + padding, sourcePosition.y))
                                    newBendPoints.add(Point(sourcePosition.x + padding, targetPosition.y))
                                }
                            } else if (!hasSourceShiftByY() && hasTargetShiftByY()) {
                                if (sourcePosition.x < bounds.left && bounds.left < targetPosition.x) {
                                    newBendPoints.add(Point(bounds.left - padding, sourcePosition.y))
                                    newBendPoints.add(Point(bounds.left - padding, targetPosition.y))
                                } else {
                                    newBendPoints.add(Point(targetPosition.x - padding, sourcePosition.y))
                                    newBendPoints.add(Point(targetPosition.x - padding, targetPosition.y))
                                }
                            }
                        }

                        if (newBendPoints.isNotEmpty()) {
                            val newConnection = FBConnectionPath(sourcePosition, targetPosition, newBendPoints)
                            return@withConnectionData getBrokenConnectionIfNecessary(connection, newConnection, i + 1)
                        }
                    }
                    return@withConnectionData fbConnectionPath
                }

                ConnectionPath.Kind.TwoAngles -> {
                    val x1 = fbConnectionPath.x1

                    for (i in index until expandedFBs.size) {
                        val (expandedFB, expandingData) = expandedFBs[i]
                        val newBendPoints = mutableListOf<Point>()

                        withExpandedFBData(expandedFB, expandingData) {
                            addFirstCorner(this@withExpandedFBData, this@withConnectionData, x1, newBendPoints, padding)
                            addLastCorner(this@withExpandedFBData, this@withConnectionData, x1, newBendPoints, padding)
                        }

                        if (newBendPoints.isNotEmpty()) {
                            val newConnection = FBConnectionPath(sourcePosition, targetPosition, newBendPoints)
                            return@withConnectionData getBrokenConnectionIfNecessary(connection, newConnection, i + 1)
                        }
                    }
                    return@withConnectionData fbConnectionPath
                }

                ConnectionPath.Kind.FourAngles -> {
                    val x1 = fbConnectionPath.x1
                    val x2 = fbConnectionPath.x2
                    val y = fbConnectionPath.y

                    for (i in index until expandedFBs.size) {
                        val (expandedFB, expandingData) = expandedFBs[i]
                        val newBendPoints = mutableListOf<Point>()

                        withExpandedFBData(expandedFB, expandingData) {
                            addFirstCorner(this@withExpandedFBData, this@withConnectionData, x1, newBendPoints, padding)
                            newBendPoints.add(Point(x1, y))
                            newBendPoints.add(Point(x2, y))
                            addLastCorner(this@withExpandedFBData, this@withConnectionData, x2, newBendPoints, padding)
                        }

                        if (newBendPoints.isNotEmpty()) {
                            val newConnection = FBConnectionPath(sourcePosition, targetPosition, newBendPoints)
                            return@withConnectionData getBrokenConnectionIfNecessary(connection, newConnection, i + 1)
                        }
                    }
                    return@withConnectionData fbConnectionPath
                }

                ConnectionPath.Kind.MoreThanFour -> {
                    val x1 = fbConnectionPath.x1
                    val x2 = fbConnectionPath.x2
                    val y = fbConnectionPath.y
                    val bendPoints = fbConnectionPath.bendPoints

                    for (i in index until expandedFBs.size) {
                        val (expandedFB, expandingData) = expandedFBs[i]
                        val newBendPoints = mutableListOf<Point>()

                        withExpandedFBData(expandedFB, expandingData) {
                            addFirstCorner(this@withExpandedFBData, this@withConnectionData, x1, newBendPoints, padding)
                            for (j in 1..bendPoints.size - 2) {
                                val bendPoint = bendPoints[j]
                                newBendPoints.add(Point(bendPoint))
                            }
                            addLastCorner(this@withExpandedFBData, this@withConnectionData, x2, newBendPoints, padding)
                        }

                        if (newBendPoints.isNotEmpty()) {
                            val newConnection = FBConnectionPath(sourcePosition, targetPosition, newBendPoints)
                            return@withConnectionData getBrokenConnectionIfNecessary(connection, newConnection, i + 1)
                        }
                    }
                    return@withConnectionData fbConnectionPath
                }
            }
        }
    }

    private fun addFirstCorner(
        expandedFBData: ExpandedFBData,
        connectionData: ConnectionData,
        x: Int,
        newBendPoints: MutableList<Point>,
        padding: Int
    ) {
        fun condition(expandedFBData: ExpandedFBData, connectionData: ConnectionData, x: Int): Boolean {
            return !expandedFBData.hasSourceShiftByY() &&
                expandedFBData.bounds.bottom - expandedFBData.dy < connectionData.sourcePosition.y &&
                connectionData.sourcePosition.x < expandedFBData.bounds.left && expandedFBData.bounds.left < x
        }

        var maxDy = expandedFBData.dy

        for ((expandedFB, expandingData) in expandedComponentsController.expandedFBs) {
            connectionData.withExpandedFBData(expandedFB, expandingData) {
                if (condition(this, connectionData, x) && maxDy < dy) {
                    maxDy = dy
                }
            }
        }

        if (condition(expandedFBData, connectionData, x)) {
            newBendPoints.add(Point(expandedFBData.bounds.left - padding, connectionData.sourcePosition.y))
            newBendPoints.add(Point(expandedFBData.bounds.left - padding, connectionData.sourcePosition.y + maxDy))
            newBendPoints.add(Point(x, connectionData.sourcePosition.y + maxDy))
        } else {
            newBendPoints.add(Point(x, connectionData.sourcePosition.y))
        }
    }

    private fun addLastCorner(
        expandedFBData: ExpandedFBData,
        connectionData: ConnectionData,
        x: Int,
        newBendPoints: MutableList<Point>,
        padding: Int
    ) {
        fun condition(expandedFBData: ExpandedFBData, connectionData: ConnectionData, x: Int): Boolean {
            return !expandedFBData.hasTargetShiftByY() &&
                expandedFBData.bounds.bottom - expandedFBData.dy < connectionData.targetPosition.y &&
                x < expandedFBData.bounds.right && expandedFBData.bounds.right < connectionData.targetPosition.x
        }

        var maxDy = expandedFBData.dy

        for ((expandedFB, expandingData) in expandedComponentsController.expandedFBs) {
            connectionData.withExpandedFBData(expandedFB, expandingData) {
                if (condition(this, connectionData, x) && maxDy < dy) {
                    maxDy = dy
                }
            }
        }

        if (condition(expandedFBData, connectionData, x)) {
            newBendPoints.add(Point(x, connectionData.targetPosition.y + maxDy))
            newBendPoints.add(Point(expandedFBData.bounds.right + padding, connectionData.targetPosition.y + maxDy))
            newBendPoints.add(Point(expandedFBData.bounds.right + padding, connectionData.targetPosition.y))
        } else {
            newBendPoints.add(Point(x, connectionData.targetPosition.y))
        }
    }

    override fun setPath(connection: NetworkConnectionView, path: FBConnectionPath) {
        val sourcePosition = path.sourcePosition
        val targetPosition = path.targetPosition

        val fbConnectionPathWithoutOffset = getFBConnectionPathWithoutOffset(connection, path)

        val modelSourcePosition = Point(
            (viewpoint.translateFromEditorX(sourcePosition.x) / scale).toInt(),
            (viewpoint.translateFromEditorY(sourcePosition.y) / scale).toInt()
        )
        val modelTargetPosition = Point(
            (viewpoint.translateFromEditorX(targetPosition.x) / scale).toInt(),
            (viewpoint.translateFromEditorY(targetPosition.y) / scale).toInt()
        )
        val bendPoints = FBConnectionController.deepCopy(fbConnectionPathWithoutOffset.bendPoints)
        val newBendPoints = bendPoints.map { point ->
            val x = (viewpoint.translateFromEditorX(point.x) / scale).toInt()
            val y = (viewpoint.translateFromEditorY(point.y) / scale).toInt()
            Point(x, y)
        }.toMutableList()
        val fbConnectionPath = FBConnectionPath(modelSourcePosition, modelTargetPosition, newBendPoints)

        val dx1 = fbConnectionPath.x1 - modelSourcePosition.x
        val dy = fbConnectionPath.y - modelSourcePosition.y
        val dx2 = modelTargetPosition.x - fbConnectionPath.x2
        if (path.pathKind == ConnectionPath.Kind.MoreThanFour) {
            connection.setPath(LongConnectionPath(dx1, dy, dx2, fbConnectionPath.bendPoints))
        } else {
            connection.setPath(ConnectionPath(fbConnectionPath.pathKind, dx1, dy, dx2))
        }
    }

    private fun editorBendPoints(path: LongConnectionPath): MutableList<Point> {
        val editorBendPoints = path.bendPoints.map { point: Point ->
            val x = viewpoint.translateToEditorX((point.x * scale).toInt())
            val y = viewpoint.translateToEditorY((point.y * scale).toInt())
            Point(x, y)
        }.toMutableList()
        return editorBendPoints
    }

    private fun getFBConnectionPathWithOffset(
        connection: NetworkConnectionView,
        fbConnectionPath: FBConnectionPath
    ): FBConnectionPath {
        return getFBConnectionPathWithOffset(connection, fbConnectionPath, false)
    }

    private fun getFBConnectionPathWithoutOffset(
        connection: NetworkConnectionView,
        fbConnectionPath: FBConnectionPath
    ): FBConnectionPath {
        return getFBConnectionPathWithOffset(connection, fbConnectionPath, true)
    }

    private fun getFBConnectionPathWithOffset(
        connection: NetworkConnectionView,
        fbConnectionPath: FBConnectionPath,
        inverted: Boolean
    ): FBConnectionPath {
        if (expandedComponentsController.expandedFBs.isEmpty() ||
            diagramController.getSource(connection) == null ||
            diagramController.getSource(connection) is InlineValueView ||
            diagramController.getTarget(connection) == null
        ) {
            return fbConnectionPath
        }

        return withConnectionData(connection, fbConnectionPath) {
            val bendPoints = FBConnectionController.deepCopy(fbConnectionPath.bendPoints)
            val expandedFBsSortedByRightBounds = expandedFBsSortedByRightBounds()
            val expandedFBsSortedByBottomBounds = expandedFBsSortedByBottomBounds()
            for (i in 1 until bendPoints.size) {
                val expandedFBs = if (i % 2 != 0) expandedFBsSortedByRightBounds else expandedFBsSortedByBottomBounds
                processSection(bendPoints, i, inverted, expandedFBs)
            }
            return@withConnectionData FBConnectionPath(
                fbConnectionPath.sourcePosition,
                fbConnectionPath.targetPosition,
                bendPoints
            )
        }
    }

    private fun expandedFBsSortedByLeftBounds(): List<Pair<FunctionBlockView, ExpandedComponentsController.ExpandingData>> {
        val expandedFBsSortedByRightBound = expandedComponentsController.expandedFBs.toList()
            .sortedBy { (expandedFB: FunctionBlockView, expandingData: ExpandedComponentsController.ExpandingData) ->
                val controller = componentsFacility.getController(expandedFB)
                val position = Point(controller.componentCell.x, controller.componentCell.y)
                val bounds = controller.getBounds(position)
                val leftBound = bounds.left
                leftBound
            }
        return expandedFBsSortedByRightBound
    }

    private fun expandedFBsSortedByRightBounds(): List<Pair<FunctionBlockView, ExpandedComponentsController.ExpandingData>> {
        val expandedFBsSortedByRightBound = expandedComponentsController.expandedFBs.toList()
            .sortedBy { (expandedFB: FunctionBlockView, expandingData: ExpandedComponentsController.ExpandingData) ->
                val controller = componentsFacility.getController(expandedFB)
                val position = Point(controller.componentCell.x, controller.componentCell.y)
                val bounds = controller.getBounds(position)
                val dx = viewpoint.toEditorDimension(expandingData.dx)
                val rightBound = bounds.right - dx
                rightBound
            }
        return expandedFBsSortedByRightBound
    }

    private fun expandedFBsSortedByBottomBounds(): List<Pair<FunctionBlockView, ExpandedComponentsController.ExpandingData>> {
        val expandedFBsSortedByBottomBound = expandedComponentsController.expandedFBs.toList()
            .sortedBy { (expandedFB: FunctionBlockView, expandingData: ExpandedComponentsController.ExpandingData) ->
                val controller = componentsFacility.getController(expandedFB)
                val bounds = controller.getBounds(Point(controller.componentCell.x, controller.componentCell.y))
                val dy = viewpoint.toEditorDimension(expandingData.dy)
                val bottomBound = bounds.bottom - dy
                bottomBound
            }
        return expandedFBsSortedByBottomBound
    }

    private fun ConnectionData.processSection(
        bendPoints: MutableList<Point>,
        index: Int,
        inverted: Boolean,
        expandedFBs: List<Pair<FunctionBlockView, ExpandedComponentsController.ExpandingData>>
    ) {
        val u = bendPoints[index - 1]
        val v = bendPoints[index]
        val isHorizontal = index % 2 == 0
        val list = if (inverted) expandedFBs.reversed() else expandedFBs
        for ((expandedFB, expandingData) in list) {
            var offset = 0
            withExpandedFBData(expandedFB, expandingData) {
                if (bendPoints.size > 4) {
                    if (isHorizontal && v.y > bounds.bottom - dy || !isHorizontal && v.x > bounds.right - dx) {
                        offset += if (isHorizontal) dy else dx
                        moveSection(isHorizontal, u, if (inverted) -offset else offset, v)
                    }
                } else {
                    if (index == 1 && expandedFB != sourceComponent && !hasSourceShiftByX() && v.x > bounds.right - dx) {
                        offset += dx
                    }
                    if (index == 2 && bendPoints.size == 4 && !hasSourceShiftByY() && v.y > bounds.bottom - dy) {
                        offset += dy
                    }
                    if (index == 2 && bendPoints.size == 4 && hasSourceShiftByY() && v.y - dy < bounds.bottom - dy) {
                        offset -= dy
                    }
                    if (index == 3 && bendPoints.size == 4 && hasTargetShiftByX() && v.x - dx < bounds.right - dx) {
                        offset -= dx
                    }

                    moveSection(isHorizontal, u, if (inverted) -offset else offset, v)
                }
            }
        }
    }

    private fun moveSection(isHorizontal: Boolean, u: Point, offset: Int, v: Point) {
        if (isHorizontal) {
            u.translate(0, offset)
            v.translate(0, offset)
        } else {
            u.translate(offset, 0)
            v.translate(offset, 0)
        }
    }

    private data class ExpandedFBData(
        val bounds: Rectangle,
        val dx: Int,
        val dy: Int,
        val sourceShift: Point?,
        val targetShift: Point?
    ) {
        fun hasSourceShiftByX() = sourceShift != null && sourceShift.x > 0
        fun hasSourceShiftByY() = sourceShift != null && sourceShift.y > 0

        fun hasTargetShiftByX() = targetShift != null && targetShift.x > 0
        fun hasTargetShiftByY() = targetShift != null && targetShift.y > 0
    }

    private fun ConnectionData.withExpandedFBData(
        expandedFB: FunctionBlockView,
        expandingData: ExpandedComponentsController.ExpandingData,
        block: ExpandedFBData.() -> Unit
    ) {
        val controller = componentsFacility.getController(expandedFB)
        val x = controller.componentCell.x
        val y = controller.componentCell.y
        val position = Point(x, y)
        val bounds = controller.getBounds(position)
        val dx = viewpoint.toEditorDimension(expandingData.dx)
        val dy = viewpoint.toEditorDimension(expandingData.dy)

        val sourceShift = expandingData.componentShifts[sourceComponent]
        val targetShift = expandingData.componentShifts[targetComponent]

        return ExpandedFBData(
            bounds = bounds,
            dx = dx,
            dy = dy,
            sourceShift = sourceShift,
            targetShift = targetShift
        ).block()
    }

    private data class ConnectionData(
        val sourceComponent: NetworkComponentView,
        val targetComponent: NetworkComponentView,
        val sourcePosition: Point,
        val targetPosition: Point,
        val sourceComponentX: Int,
        val sourceComponentY: Int,
        val targetComponentX: Int,
        val targetComponentY: Int
    )

    private fun <T> withConnectionData(
        connection: NetworkConnectionView,
        fbConnectionPath: FBConnectionPath,
        block: ConnectionData.() -> T
    ): T {
        val sourcePosition = fbConnectionPath.sourcePosition
        val targetPosition = fbConnectionPath.targetPosition

        val sourcePort = diagramController.getSource(connection) ?: error("Source not found")
        val targetPort = diagramController.getTarget(connection) ?: error("Target not found")

        val sourceComponent = diagramController.getComponent(sourcePort)
        val targetComponent = diagramController.getComponent(targetPort)

        val sourceComponentController = componentsFacility.getController(sourceComponent)
        val targetComponentController = componentsFacility.getController(targetComponent)

        val sourceComponentX = sourceComponentController.componentCell.x
        val sourceComponentY = sourceComponentController.componentCell.y

        val targetComponentX = targetComponentController.componentCell.x
        val targetComponentY = targetComponentController.componentCell.y

        return ConnectionData(
            sourceComponent = sourceComponent,
            targetComponent = targetComponent,
            sourcePosition = sourcePosition,
            targetPosition = targetPosition,
            sourceComponentX = sourceComponentX,
            sourceComponentY = sourceComponentY,
            targetComponentX = targetComponentX,
            targetComponentY = targetComponentY
        ).block()
    }

    private val Rectangle.left: Int
        get() = x

    private val Rectangle.right: Int
        get() = x + width

    private val Rectangle.top: Int
        get() = y

    private val Rectangle.bottom: Int
        get() = y + height
}
