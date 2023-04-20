package org.fbme.scenes.controllers.diagram

interface DiagramController<CompT, PortT, ConnT> {
    val isDiagramEditable: Boolean
    fun getPortController(port: PortT): PortController
    fun findPort(x: Int, y: Int): PortT?
    val components: Set<CompT>
    val connections: Set<ConnT>
    fun getPorts(component: CompT): Set<PortT>
    fun getComponent(port: PortT): CompT
    fun getSource(edge: ConnT): PortT?
    fun setSource(edge: ConnT, port: PortT)
    fun getTarget(edge: ConnT): PortT?
    fun setTarget(edge: ConnT, port: PortT)
    fun removeEdge(edge: ConnT)
    fun addEdge(sourcePort: PortT, targetPort: PortT): ConnT?
}
