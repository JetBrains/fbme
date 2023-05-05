package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.awt.Rectangle

interface PortSettingProvider<PortT, CompT, CFormT> {
    fun getBounds(componentForm: CFormT, port: PortT): Rectangle
    fun getEndpointPosition(componentForm: CFormT, port: PortT): Point

    fun getPortTemplates(componentForm: CompT): Set<PortT> {
        return emptySet()
    }

    fun canBeSourcedAt(componentForm: CFormT, port: PortT, x: Int, y: Int): Boolean {
        return true
    }

    fun canBeTargetedAt(componentForm: CFormT, port: PortT, x: Int, y: Int): Boolean {
        return true
    }

    fun getTemplateBounds(modelForm: CFormT, template: PortT): Rectangle {
        return Rectangle(0, 0)
    }

    fun getTemplateEndpointPosition(modelForm: CFormT, template: PortT): Point {
        return Point(0, 0)
    }

    fun createPort(source: PortT, template: PortT): PortT? {
        return null
    }
}
