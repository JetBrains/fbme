package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionPathSynchronizer
import java.awt.Point

class ECTransitionPathSynchronizer(
    private val viewpoint: SceneViewpoint,
    private val componentsFacility: ComponentsFacility<StateDeclaration, Point>
) : ConnectionPathSynchronizer<StateTransition, ECTransitionPath> {
    override fun getPath(connection: StateTransition): (Point, Point) -> ECTransitionPath {
        val cx = connection.centerX
        val cy = connection.centerY
        val sourceDeclaration = connection.sourceReference.getTarget() ?: error("Source declaration is null")
        val targetDeclaration = connection.targetReference.getTarget() ?: error("Target declaration is null")
        return { sp: Point, tp: Point ->
            val sourceBound = ECTransitionUtils.getBoundsFromDeclaration(sourceDeclaration, componentsFacility)
            val targetBound = ECTransitionUtils.getBoundsFromDeclaration(targetDeclaration, componentsFacility)
            val center = Point(viewpoint.translateToEditorX(cx), viewpoint.translateToEditorY(cy))
            val sourcePoint = ECTransitionUtils.crossBound(center, sp, sourceBound)
            val targetPoint = ECTransitionUtils.crossBound(center, tp, targetBound)
            ECTransitionPath(sourcePoint, center, targetPoint)
        }
    }

    override fun setPath(connection: StateTransition, path: ECTransitionPath) {
        connection.centerX = viewpoint.translateFromEditorX(path.centre.x)
        connection.centerY = viewpoint.translateFromEditorY(path.centre.y)
    }
}
