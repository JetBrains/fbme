package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.NetworkPortView
import java.awt.Point
import java.awt.Rectangle

interface FBNetworkComponentController {
    fun getBounds(position: Point): Rectangle
    fun getFBCellBounds(position: Point): Rectangle {
        return getBounds(position)
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
}
