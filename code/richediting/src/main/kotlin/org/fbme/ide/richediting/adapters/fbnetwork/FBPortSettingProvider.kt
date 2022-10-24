package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.PortSettingProvider
import java.awt.Point
import java.awt.Rectangle
import java.util.function.Function

class FBPortSettingProvider(private val myMapper: Function<NetworkComponentView, FBNetworkComponentController>) :
    PortSettingProvider<NetworkPortView, Point> {
    override fun getBounds(componentForm: Point, port: NetworkPortView): Rectangle {
        val component = port.component
        val controller = myMapper.apply(component)
        return controller.getPortBounds(port, componentForm)
    }

    override fun getEndpointPosition(componentForm: Point, port: NetworkPortView): Point {
        val component = port.component
        val controller = myMapper.apply(component)
        return controller.getPortCoordinates(port, componentForm)
    }

    override fun canBeSourcedAt(componentForm: Point, port: NetworkPortView, x: Int, y: Int): Boolean {
        val component = port.component
        val controller = myMapper.apply(component)
        return controller.canBeSourcedAt(port, Point(x, y))
    }

    override fun canBeTargetedAt(componentForm: Point, port: NetworkPortView, x: Int, y: Int): Boolean {
        val component = port.component
        val controller = myMapper.apply(component)
        return controller.canBeTargetedAt(port, Point(x, y))
    }

    companion object {
        fun create(componentsFacility: ComponentsFacility<NetworkComponentView, Point>): FBPortSettingProvider {
            return FBPortSettingProvider { componentsFacility.getController(it) as FBNetworkComponentController }
        }
    }
}
