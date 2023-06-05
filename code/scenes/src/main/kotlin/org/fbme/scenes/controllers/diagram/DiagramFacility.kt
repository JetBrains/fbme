package org.fbme.scenes.controllers.diagram

import org.fbme.scenes.controllers.diagram.entry.PortEntry
import org.fbme.scenes.controllers.diagram.entry.PortTemplateEntry
import org.fbme.scenes.exceptions.NoEntityException

class DiagramFacility<CompT, PortT, ConnT, CFormT>(
    private val diagramModel: DiagramView<CompT, PortT, ConnT>,
    private val portSettingProvider: PortSettingProvider<PortT, CompT, CFormT>,
    private val componentSettings: DiagramComponentSettingProvider<CompT, CFormT>
) {
    private val components: MutableSet<CompT> = HashSet()
    private val edges: MutableSet<ConnT> = HashSet()
    private val componentToPorts: MutableMap<CompT, Set<PortT>> = HashMap()
    private val portToComponent: MutableMap<PortT, CompT> = HashMap()
    private val connectionToSource: MutableMap<ConnT, PortT> = HashMap()
    private val connectionToTarget: MutableMap<ConnT, PortT> = HashMap()
    private val portTemplates: MutableList<PortT> = mutableListOf()
    private val portTemplatesToComponent: MutableMap<PortTemplateEntry<PortT, CompT, CFormT>, CompT> = HashMap()
    private val ports: MutableMap<PortT, PortEntry<PortT, CompT, CFormT>> = HashMap()
    val diagramController: DiagramController<CompT, PortT, ConnT> = MyDiagramController()

    private fun init() {
        for (component in diagramModel.components()) {
            components.add(component)
            val ports = HashSet(diagramModel.ports(component))
            componentToPorts[component] = ports
            for (port in ports) {
                this.ports.computeIfAbsent(port) {
                    PortEntry(it, component, componentSettings, portSettingProvider)
                }
                portToComponent[port] = component
            }

            val templates = portSettingProvider.getPortTemplates(component)
            portTemplates.addAll(templates)
            templates.forEach {
                val template = PortTemplateEntry(
                        it,
                        component,
                        this.portToComponent,
                        this.ports,
                        componentSettings,
                        portSettingProvider
                )
                portTemplatesToComponent[template] = component
            }
        }
        for (edge in diagramModel.edges()) {
            edges.add(edge)
            connectionToSource[edge] = diagramModel.sourcePort(edge)
            connectionToTarget[edge] = diagramModel.targetPort(edge)
        }
    }

    private inner class MyDiagramController : DiagramController<CompT, PortT, ConnT> {
        override val isDiagramEditable: Boolean
            get() = diagramModel.isEditable

        override fun getTemplateController(template: PortT): TemplateController<PortT> {
            return portTemplatesToComponent.keys.find { it.template == template }!!
        }

        override val components: Set<CompT>
            get() = this@DiagramFacility.components
        override val connections: Set<ConnT>
            get() = edges

        override fun addPort(port: PortT) {
            diagramModel.addPort(port, portToComponent[port]!!)
        }

        override fun getComponent(port: PortT): CompT {
            return portToComponent[port] ?: throw NoEntityException("Can't find component")
        }

        override fun getPortController(port: PortT): PortController<PortT> {
            return ports[port] ?: throw NoEntityException("Can't find port controller")
        }

        override fun findPort(x: Int, y: Int): PortT? {
            for (entry in ports.values) {
                if (entry.bounds.contains(x, y)) {
                    return entry.port
                }
            }
            return null
        }

        override fun findPortTemplate(x: Int, y: Int): PortT? {
            for (entry in portTemplatesToComponent.keys) {
                if (entry.bounds.contains(x, y)) {
                    return entry.template
                }
            }
           return null
        }

        override fun getPorts(component: CompT): Set<PortT> {
            return componentToPorts[component] ?: throw NoEntityException("Can't find port!")
        }

        override fun getSource(edge: ConnT): PortT? {
            return connectionToSource[edge]
        }

        override fun getTarget(edge: ConnT): PortT? {
            return connectionToTarget[edge]
        }

        override fun setSource(edge: ConnT, port: PortT) {
            diagramModel.setSourcePort(edge, port)
        }

        override fun setTarget(edge: ConnT, port: PortT) {
            diagramModel.setTargetPort(edge, port)
        }

        override fun removeEdge(edge: ConnT) {
            diagramModel.removeEdge(edge)
        }

        override fun addEdge(sourcePort: PortT, targetPort: PortT): ConnT? {
            return diagramModel.addEdge(sourcePort, targetPort)
        }
    }

    init {
        init()
    }
}
