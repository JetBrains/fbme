package org.fbme.scenes.controllers.diagram

interface DiagramView<C, P, E> {
    val isEditable: Boolean
    fun components(): Set<C>
    fun edges(): Set<E>
    fun ports(component: C): Set<P>
    fun component(port: P): C
    fun sourcePort(edge: E): P
    fun setSourcePort(edge: E, port: P)
    fun targetPort(edge: E): P
    fun setTargetPort(edge: E, port: P)
    fun removeEdge(edge: E)
    fun addEdge(sourcePort: P, targetPort: P): E?
}
