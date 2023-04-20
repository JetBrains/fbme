package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.components.ComponentSynchronizer
import java.awt.Point

class FBNetworkComponentSynchronizer(
    private val viewpoint: SceneViewpoint,
    private val scale: Float,
    private val expandedComponentsController: ExpandedComponentsController
) : ComponentSynchronizer<NetworkComponentView, Point> {
    override fun getForm(component: NetworkComponentView): () -> Point {
        if (component is FunctionBlockView) {
            val componentPositionWithOffset = getComponentPositionWithOffset(component)
            return {
                Point(
                    viewpoint.translateToEditorX(componentPositionWithOffset.x),
                    viewpoint.translateToEditorY(componentPositionWithOffset.y)
                )
            }
        } else if (component is InterfaceEndpointView) {
            val componentPositionWithOffset = getComponentPositionWithOffset(component)
            return {
                Point(
                    viewpoint.translateToEditorX(componentPositionWithOffset.x),
                    viewpoint.translateToEditorY(componentPositionWithOffset.y)
                )
            }
        }
        error("Unknown network component")
    }

    private fun getComponentPositionWithOffset(functionBlock: FunctionBlockView): Point {
        val offset = expandedComponentsController.getOffsetFor(functionBlock)
        val position = Point(functionBlock.component.x, functionBlock.component.y)
        return getPositionWithOffset(position, offset)
    }

    private fun getComponentPositionWithOffset(interfaceEndpoint: InterfaceEndpointView): Point {
        val offset = expandedComponentsController.getOffsetFor(interfaceEndpoint)
        val position = Point(interfaceEndpoint.x, interfaceEndpoint.y)
        return getPositionWithOffset(position, offset)
    }

    private fun getPositionWithOffset(position: Point, offset: Point): Point {
        val dx = offset.x
        val dy = offset.y
        val x = (scale * position.x).toInt() + dx
        val y = (scale * position.y).toInt() + dy
        return Point(x, y)
    }

    override fun setForm(component: NetworkComponentView, position: Point) {
        if (component is FunctionBlockView) {
            val componentPositionWithoutOffset = getComponentPositionWithoutOffset(component, position)
            component.component.x = componentPositionWithoutOffset.x
            component.component.y = componentPositionWithoutOffset.y
            return
        } else if (component is InterfaceEndpointView) {
            val componentPositionWithoutOffset = getComponentPositionWithoutOffset(component, position)
            component.x = componentPositionWithoutOffset.x
            component.y = componentPositionWithoutOffset.y
            return
        }
        error("Unknown network component")
    }

    private fun getComponentPositionWithoutOffset(functionBlock: FunctionBlockView, position: Point): Point {
        val offset = expandedComponentsController.getOffsetFor(functionBlock)
        return getPositionWithoutOffset(position, offset)
    }

    private fun getComponentPositionWithoutOffset(interfaceEndpoint: InterfaceEndpointView, position: Point): Point {
        val offset = expandedComponentsController.getOffsetFor(interfaceEndpoint)
        return getPositionWithoutOffset(position, offset)
    }

    private fun getPositionWithoutOffset(position: Point, offset: Point): Point {
        val dx = offset.x
        val dy = offset.y
        val x = ((viewpoint.translateFromEditorX(position.x) - dx) / scale).toInt()
        val y = ((viewpoint.translateFromEditorY(position.y) - dy) / scale).toInt()
        return Point(x, y)
    }

//    companion object {
//        private val LOG = LogManager.getLogger(FBNetworkComponentSynchronizer::class.java)
//    }
}
