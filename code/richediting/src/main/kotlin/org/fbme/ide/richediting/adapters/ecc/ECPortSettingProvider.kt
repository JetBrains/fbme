package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.PortSettingProvider
import java.awt.Point
import java.awt.Rectangle
import java.util.function.Function

class ECPortSettingProvider(private val mapper: Function<StateDeclaration, ECStateController>) :
    PortSettingProvider<StateDeclaration, Point> {
    override fun getBounds(componentForm: Point, port: StateDeclaration): Rectangle {
        val controller = mapper.apply(port)
        val bounds = Rectangle(controller.getBounds(componentForm))
        bounds.x -= bounds.width / 4
        bounds.width += bounds.width / 2
        bounds.y -= bounds.height / 4
        bounds.height += bounds.height / 2
        return bounds
    }

    override fun getEndpointPosition(componentForm: Point, port: StateDeclaration): Point {
        val controller = mapper.apply(port)
        val bounds = controller.getBounds(componentForm)
        return Point(bounds.x + bounds.width / 2, bounds.y + bounds.height / 2)
    }

    override fun canBeSourcedAt(componentForm: Point, port: StateDeclaration, x: Int, y: Int): Boolean {
        val controller = mapper.apply(port)
        return !controller.getBounds(componentForm).contains(x, y)
    }

    override fun canBeTargetedAt(componentForm: Point, port: StateDeclaration, x: Int, y: Int): Boolean {
        val controller = mapper.apply(port)
        return !controller.getBounds(componentForm).contains(x, y)
    }

    companion object {
        @JvmStatic
        fun create(componentsFacility: ComponentsFacility<StateDeclaration, Point>): ECPortSettingProvider {
            return ECPortSettingProvider { componentsFacility.getController(it) as ECStateController }
        }
    }
}
