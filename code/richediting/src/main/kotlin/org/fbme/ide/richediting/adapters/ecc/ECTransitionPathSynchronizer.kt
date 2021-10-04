package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionPathSynchronizer
import java.awt.Point
import java.util.function.BiFunction

class ECTransitionPathSynchronizer(
    private val myViewpoint: SceneViewpoint,
    private val myComponentsFacility: ComponentsFacility<StateDeclaration, Point>
) : ConnectionPathSynchronizer<StateTransition, ECTransitionPath> {
    override fun getPath(transition: StateTransition): BiFunction<Point, Point, ECTransitionPath> {
        val cx = transition.centerX
        val cy = transition.centerY
        val sourceDeclaration = transition.sourceReference.target ?: error("Source declaration is null")
        val targetDeclaration = transition.targetReference.target ?: error("Target declaration is null")
        return BiFunction { sp: Point, tp: Point ->
            val sourceBound = ECTransitionUtils.getBoundsFromDeclaration(sourceDeclaration, myComponentsFacility)
            val targetBound = ECTransitionUtils.getBoundsFromDeclaration(targetDeclaration, myComponentsFacility)
            val center = Point(myViewpoint.translateToEditorX(cx), myViewpoint.translateToEditorY(cy))
            val sourcePoint = ECTransitionUtils.crossBound(center, sp, sourceBound)
            val targetPoint = ECTransitionUtils.crossBound(center, tp, targetBound)
            ECTransitionPath(sourcePoint, center, targetPoint)
        }
    }

    override fun setPath(transition: StateTransition, path: ECTransitionPath) {
        transition.centerX = myViewpoint.translateFromEditorX(path.centre.x)
        transition.centerY = myViewpoint.translateFromEditorY(path.centre.y)
    }
}