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
    private val myViewpoint: SceneViewpoint,
    private val myScale: Float,
    private val expandedComponentsController: ExpandedComponentsController
) : ConnectionPathSynchronizer<NetworkConnectionView, FBConnectionPath> {
    override fun getPath(connection: NetworkConnectionView): BiFunction<Point, Point, FBConnectionPath> {
        val path = connection.connectionPath
        if (path is LongConnectionPath) {
            return BiFunction { sourcePosition: Point, targetPosition: Point ->
                val editorBendPoints = path.bendPoints.stream().map { point: Point ->
                    val x = myViewpoint.translateToEditorX((point.x * myScale).toInt())
                    val y = myViewpoint.translateToEditorY((point.y * myScale).toInt())
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
        val dx1 = (myScale * path.dX1).toInt()
        val dy = (myScale * path.dY).toInt()
        val dx2 = (myScale * path.dX2).toInt()
        return BiFunction { sourcePosition: Point, targetPosition: Point ->
            val fbConnectionPath = FBConnectionPath(
                sourcePosition,
                targetPosition,
                path.kind,
                sourcePosition.x + myViewpoint.toEditorDimension(dx1),
                sourcePosition.y + myViewpoint.toEditorDimension(dy),
                targetPosition.x - myViewpoint.toEditorDimension(dx2)
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
            offset = if (inverted) -(offset / myScale).toInt() else myViewpoint.toEditorDimension(offset)
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
            (myViewpoint.translateFromEditorX(sourcePosition.x) / myScale).toInt(),
            (myViewpoint.translateFromEditorY(sourcePosition.y) / myScale).toInt()
        )
        val modelTargetPosition = Point(
            (myViewpoint.translateFromEditorX(targetPosition.x) / myScale).toInt(),
            (myViewpoint.translateFromEditorY(targetPosition.y) / myScale).toInt()
        )
        val bendPoints = path.bendPoints
        val newBendPoints = bendPoints.stream().map { point: Point? ->
            val x = (myViewpoint.translateFromEditorX(point!!.x) / myScale).toInt()
            val y = (myViewpoint.translateFromEditorY(point.y) / myScale).toInt()
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