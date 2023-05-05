package org.fbme.scenes.controllers.diagram.entry

import org.fbme.scenes.controllers.diagram.DiagramComponentSettingProvider
import org.fbme.scenes.controllers.diagram.PortController
import org.fbme.scenes.controllers.diagram.PortSettingProvider
import org.fbme.scenes.controllers.diagram.TemplateController
import java.awt.Point
import java.awt.Rectangle

class PortTemplateEntry<PortT, CompT, CFormT>(
        val template: PortT,
        val component: CompT,
        val portToComponent: MutableMap<PortT, CompT>,
        val ports: MutableMap<PortT, PortEntry<PortT, CompT, CFormT>>,
        private val componentSettings: DiagramComponentSettingProvider<CompT, CFormT>,
        private val portSettingProvider: PortSettingProvider<PortT, CompT, CFormT>,
) : PortController, TemplateController<PortT> {
    override val bounds: Rectangle
        get() = portSettingProvider.getTemplateBounds(componentSettings.getModelForm(component), template)
    override val modelEndpointPosition: Point
        get() = portSettingProvider.getTemplateEndpointPosition(componentSettings.getModelForm(component), template)
    override val transformedEndpointPosition: Point?
        get() = TODO("Not yet implemented")

    override fun canBeSourcedAt(x: Int, y: Int): Boolean {
        return true
    }

    override fun canBeTargetedAt(x: Int, y: Int): Boolean {
        return true
    }

    override fun createPort(source: PortT): PortT? {
        val nPort = portSettingProvider.createPort(source, template) ?: return null
        ports.computeIfAbsent(nPort) { PortEntry(nPort, component, componentSettings, portSettingProvider) }
        portToComponent[nPort] = component
        return nPort
    }
}