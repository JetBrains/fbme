package org.fbme.ide.richediting.adapters.fbnetwork

import com.intellij.openapi.util.Pair
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.lib.iec61499.fbnetwork.LongConnectionPath
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.diagram.ConnectionPathSynchronizer
import java.awt.Point
import java.util.function.BiFunction
import java.util.stream.Collectors

class FBConnectionPathSynchronizer(
    private val viewpoint: SceneViewpoint,
    private val scale: Float,
    private val expandedComponentsController: ExpandedComponentsController
) : ConnectionPathSynchronizer<NetworkConnectionView, FBConnectionPath> {
    override fun getPath(connection: NetworkConnectionView): BiFunction<Point, Point, FBConnectionPath> {
        val path = connection.connectionPath
        if (path is LongConnectionPath) {
            return BiFunction { sourcePosition: Point, targetPosition: Point ->
                val editorBendPoints = path.bendPoints.stream().map { point: Point ->
                    val x = viewpoint.translateToEditorX((point.x * scale).toInt())
                    val y = viewpoint.translateToEditorY((point.y * scale).toInt())
                    Point(x, y)
                }.collect(Collectors.toList())
                val fbConnectionPath = FBConnectionPath(
                    sourcePosition,
                    targetPosition,
                    editorBendPoints
                )
                getFBConnectionPathWithOffset(connection, sourcePosition, targetPosition, fbConnectionPath, false)
            }
        }
        val dx1 = (scale * path.dX1).toInt()
        val dy = (scale * path.dY).toInt()
        val dx2 = (scale * path.dX2).toInt()
        return BiFunction { sourcePosition: Point, targetPosition: Point ->
            val fbConnectionPath = FBConnectionPath(
                sourcePosition,
                targetPosition,
                path.kind,
                sourcePosition.x + viewpoint.toEditorDimension(dx1),
                sourcePosition.y + viewpoint.toEditorDimension(dy),
                targetPosition.x - viewpoint.toEditorDimension(dx2)
            )
            getFBConnectionPathWithOffset(connection, sourcePosition, targetPosition, fbConnectionPath, false)
        }
    }

    private fun getFBConnectionPathWithOffset(
        connection: NetworkConnectionView,
        sourcePosition: Point,
        targetPosition: Point,
        fbConnectionPath: FBConnectionPath,
        inverted: Boolean
    ): FBConnectionPath {
        val bendPoints = fbConnectionPath.bendPoints
        val newBendPoints = FBConnectionController.deepCopy(bendPoints)
        for (i in 1 until newBendPoints.size) {
            val u = newBendPoints[i - 1]
            val v = newBendPoints[i]
            val section = Pair(connection, i)
            var offset = expandedComponentsController.getOffsetForSection(section)
            offset = if (inverted) -(offset / scale).toInt() else viewpoint.toEditorDimension(offset)
            val isHorizontal = i % 2 == 0
            if (isHorizontal) {
                u.translate(0, offset)
                v.translate(0, offset)
            } else {
                u.translate(offset, 0)
                v.translate(offset, 0)
            }
        }
        return FBConnectionPath(sourcePosition, targetPosition, newBendPoints)
    }

    override fun setPath(connection: NetworkConnectionView, path: FBConnectionPath) {
        val sourcePosition = path.sourcePosition
        val targetPosition = path.targetPosition
        val modelSourcePosition = Point(
            (viewpoint.translateFromEditorX(sourcePosition.x) / scale).toInt(),
            (viewpoint.translateFromEditorY(sourcePosition.y) / scale).toInt()
        )
        val modelTargetPosition = Point(
            (viewpoint.translateFromEditorX(targetPosition.x) / scale).toInt(),
            (viewpoint.translateFromEditorY(targetPosition.y) / scale).toInt()
        )
        val bendPoints = path.bendPoints
        val newBendPoints = bendPoints.stream().map { point: Point? ->
            val x = (viewpoint.translateFromEditorX(point!!.x) / scale).toInt()
            val y = (viewpoint.translateFromEditorY(point.y) / scale).toInt()
            Point(x, y)
        }.collect(Collectors.toList())
        val fbConnectionPath = FBConnectionPath(modelSourcePosition, modelTargetPosition, newBendPoints)
        val fbConnectionPathWithOffset =
            getFBConnectionPathWithOffset(connection, modelSourcePosition, modelTargetPosition, fbConnectionPath, true)
        val dx1 = fbConnectionPathWithOffset.x1 - modelSourcePosition.x
        val dy = fbConnectionPathWithOffset.y - modelSourcePosition.y
        val dx2 = modelTargetPosition.x - fbConnectionPathWithOffset.x2
        if (path.pathKind == ConnectionPath.Kind.MoreThanFour) {
            connection.setPath(LongConnectionPath(dx1, dy, dx2, fbConnectionPathWithOffset.bendPoints))
        } else {
            connection.setPath(ConnectionPath(fbConnectionPathWithOffset.pathKind, dx1, dy, dx2))
        }
    }
}