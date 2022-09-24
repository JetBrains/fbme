package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentSynchronizer
import java.awt.Point

class ECCSynchronizer(private val viewpoint: SceneViewpoint) : ComponentSynchronizer<StateDeclaration, Point> {
    override fun getForm(component: StateDeclaration): () -> Point {
        val x = component.x
        val y = component.y
        return { Point(viewpoint.translateToEditorX(x), viewpoint.translateToEditorY(y)) }
    }

    override fun setForm(component: StateDeclaration, form: Point) {
        component.x = viewpoint.translateFromEditorX(form.x)
        component.y = viewpoint.translateFromEditorY(form.y)
    }
}
