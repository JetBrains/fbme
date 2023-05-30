package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.PortSettingProvider
import java.awt.Point
import java.awt.Rectangle
import java.util.function.Function

class FBPortSettingProvider(
        private val myMapper: Function<NetworkComponentView, FBNetworkComponentController>
) : PortSettingProvider<NetworkPortView, NetworkComponentView, Point> {
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

    override fun getPortTemplates(componentForm: NetworkComponentView): Set<NetworkPortView> {
        return myMapper.apply(componentForm).getFBPortTemplates()
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

    override fun getTemplateBounds(modelForm: Point, template: NetworkPortView): Rectangle {
        val component = template.component
        val controller = myMapper.apply(component)
        return controller.getTemplateBounds(template, modelForm)
    }

    override fun createPort(source: NetworkPortView, template: NetworkPortView): NetworkPortView? {
        if (source.kind != template.kind) return null

        val component = template.component
        val controller = myMapper.apply(component)
        return controller.createPort(source, template)
    }

    override fun getTemplateEndpointPosition(modelForm: Point, template: NetworkPortView): Point {
        val component = template.component
        val controller = myMapper.apply(component)
        return controller.getTemplatePosition(template, modelForm)
    }

    override fun connectPortTo(source: NetworkPortView, port: NetworkPortView) {
        val component = port.component
        myMapper.apply(component).connectTo(port, source)
    }
}
