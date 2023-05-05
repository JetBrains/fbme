package org.fbme.scenes.controllers.diagram.entry

import org.fbme.scenes.controllers.diagram.DiagramComponentSettingProvider
import org.fbme.scenes.controllers.diagram.PortController
import org.fbme.scenes.controllers.diagram.PortSettingProvider
import java.awt.Point
import java.awt.Rectangle

class PortEntry<PortT, CompT, CFormT>(
        val port: PortT,
        val component: CompT,
        private val componentSettings: DiagramComponentSettingProvider<CompT, CFormT>,
        private val portSettingProvider: PortSettingProvider<PortT, CompT, CFormT>,
) : PortController {
    override val bounds: Rectangle
        get() {
            return portSettingProvider.getBounds(componentSettings.getModelForm(component), port)
        }
    override val modelEndpointPosition: Point
        get() {
            return portSettingProvider.getEndpointPosition(componentSettings.getModelForm(component), port)
        }
    override val transformedEndpointPosition: Point?
        get() {
            val transformedForm = componentSettings.getTransformedForm(component) ?: return null
            return portSettingProvider.getEndpointPosition(transformedForm, port)
        }

    override fun canBeSourcedAt(x: Int, y: Int): Boolean {
        return portSettingProvider.canBeSourcedAt(componentSettings.getModelForm(component), port, x, y)
    }

    override fun canBeTargetedAt(x: Int, y: Int): Boolean {
        return portSettingProvider.canBeTargetedAt(componentSettings.getModelForm(component), port, x, y)
    }
}