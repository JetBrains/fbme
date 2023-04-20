package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.awt.Rectangle

class DiagramFacility<CompT, PortT, ConnT, CFormT>(
    private val diagramModel: DiagramView<CompT, PortT, ConnT>,
    private val portSettingProvider: PortSettingProvider<PortT, CFormT>,
    private val componentSettings: DiagramComponentSettingProvider<CompT, CFormT>
) {
    private val components: MutableSet<CompT> = HashSet()
    private val edges: MutableSet<ConnT> = HashSet()
    private val componentToPorts: MutableMap<CompT, Set<PortT>> = HashMap()
    private val portToComponent: MutableMap<PortT, CompT> = HashMap()
    private val connectionToSource: MutableMap<ConnT, PortT> = HashMap()
    private val connectionToTarget: MutableMap<ConnT, PortT> = HashMap()
    private val ports: MutableMap<PortT, PortEntry> = HashMap()
    val diagramController: DiagramController<CompT, PortT, ConnT> = MyDiagramController()

    private fun init() {
        for (component in diagramModel.components()) {
            components.add(component)
            val ports = HashSet(diagramModel.ports(component))
            componentToPorts[component] = ports
            for (port in ports) {
                this.ports.computeIfAbsent(port) { PortEntry(it) }
                portToComponent[port] = component
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
        override val components: Set<CompT>
            get() = this@DiagramFacility.components
        override val connections: Set<ConnT>
            get() = edges

        override fun getComponent(port: PortT): CompT {
            return portToComponent[port] ?: error("Component not found")
        }

        override fun getPortController(port: PortT): PortController {
            return ports[port] ?: error("Port controller not found")
        }

        override fun findPort(x: Int, y: Int): PortT? {
            for (entry in ports.values) {
                if (entry.bounds.contains(x, y)) {
                    return entry.port
                }
            }
            return null
        }

        override fun getPorts(component: CompT): Set<PortT> {
            return componentToPorts[component] ?: error("Ports not found")
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

    private inner class PortEntry(val port: PortT) : PortController {
        override val bounds: Rectangle
            get() {
                val component = portToComponent[port] ?: error("Component not found")
                return portSettingProvider.getBounds(componentSettings.getModelForm(component), port)
            }
        override val modelEndpointPosition: Point
            get() {
                val component = portToComponent[port] ?: error("Component not found")
                return portSettingProvider.getEndpointPosition(componentSettings.getModelForm(component), port)
            }
        override val transformedEndpointPosition: Point?
            get() {
                val component = portToComponent[port] ?: error("Component not found")
                val transformedForm = componentSettings.getTransformedForm(component) ?: return null
                return portSettingProvider.getEndpointPosition(transformedForm, port)
            }

        override fun canBeSourcedAt(x: Int, y: Int): Boolean {
            val component = portToComponent[port] ?: error("Component not found")
            return portSettingProvider.canBeSourcedAt(componentSettings.getModelForm(component), port, x, y)
        }

        override fun canBeTargetedAt(x: Int, y: Int): Boolean {
            val component = portToComponent[port] ?: error("Component not found")
            return portSettingProvider.canBeTargetedAt(componentSettings.getModelForm(component), port, x, y)
        }
    }

    init {
        init()
    }
}
