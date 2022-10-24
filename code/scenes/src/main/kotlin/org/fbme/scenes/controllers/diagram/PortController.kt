package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.awt.Rectangle

interface PortController {
    val bounds: Rectangle
    val modelEndpointPosition: Point
    val transformedEndpointPosition: Point?
    fun canBeSourcedAt(x: Int, y: Int): Boolean
    fun canBeTargetedAt(x: Int, y: Int): Boolean
}
