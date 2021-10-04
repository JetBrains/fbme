package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentSynchronizer
import java.awt.Point
import java.util.function.Supplier

class ECCSynchronizer(private val myViewpoint: SceneViewpoint) : ComponentSynchronizer<StateDeclaration, Point> {
    override fun getForm(state: StateDeclaration): Supplier<Point> {
        val x = state.x
        val y = state.y
        return Supplier { Point(myViewpoint.translateToEditorX(x), myViewpoint.translateToEditorY(y)) }
    }

    override fun setForm(state: StateDeclaration, position: Point) {
        state.x = myViewpoint.translateFromEditorX(position.x)
        state.y = myViewpoint.translateFromEditorY(position.y)
    }
}