package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.NetworkPortView
import java.awt.Point
import java.awt.Rectangle

interface FBNetworkComponentController {
    fun getBounds(position: Point): Rectangle
    fun getFBCellBounds(position: Point): Rectangle {
        return getBounds(position)
    }

    fun getFBPortTemplates(): Set<NetworkPortView> {
        return emptySet()
    }

    fun getPortCoordinates(port: NetworkPortView, position: Point): Point
    fun getPortBounds(port: NetworkPortView, position: Point): Rectangle
    fun isSource(port: NetworkPortView): Boolean
    fun canBeSourcedAt(port: NetworkPortView, position: Point): Boolean {
        return isSource(port)
    }

    fun canBeTargetedAt(port: NetworkPortView, position: Point): Boolean {
        return !isSource(port)
    }

    fun getTemplateBounds(template: NetworkPortView, modelForm: Point): Rectangle {
        return Rectangle(0, 0)
    }

    fun getTemplatePosition(template: NetworkPortView, modelForm: Point): Point {
        return Point(0, 0)
    }

    fun createPort(source: NetworkPortView, template: NetworkPortView): NetworkPortView? {
        return null
    }
}
