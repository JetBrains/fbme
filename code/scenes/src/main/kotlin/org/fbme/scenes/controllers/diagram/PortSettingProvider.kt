package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.awt.Rectangle

interface PortSettingProvider<PortT, CFormT> {
    fun getBounds(componentForm: CFormT, port: PortT): Rectangle
    fun getEndpointPosition(componentForm: CFormT, port: PortT): Point
    fun canBeSourcedAt(componentForm: CFormT, port: PortT, x: Int, y: Int): Boolean {
        return true
    }

    fun canBeTargetedAt(componentForm: CFormT, port: PortT, x: Int, y: Int): Boolean {
        return true
    }
}
