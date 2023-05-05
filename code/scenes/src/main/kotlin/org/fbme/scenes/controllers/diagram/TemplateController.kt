package org.fbme.scenes.controllers.diagram

interface TemplateController<PortT> {
    fun canBeSourcedAt(x: Int, y: Int): Boolean
    fun canBeTargetedAt(x: Int, y: Int): Boolean
    fun createPort(source: PortT): PortT?
}