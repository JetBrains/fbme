package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration

class SocketType(private val myDeclaration: AdapterTypeDeclaration) : FBTypeDescriptor {
    override val declaration: Declaration
        get() = myDeclaration
    override val typeName: String
        get() = myDeclaration.name
    override val eventInputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getEventInputPorts(myDeclaration)
    override val eventOutputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getEventOutputPorts(myDeclaration)
    override val dataInputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getDataInputPorts(myDeclaration)
    override val dataOutputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getDataOutputPorts(myDeclaration)
    override val socketPorts: List<FBPortDescriptor>
        get() = emptyList()
    override val plugPorts: List<FBPortDescriptor>
        get() = emptyList()

    override fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int> {
        return FBTypeDescriptorUtils.getAssociatedVariablesForInputEvent(myDeclaration, eventNumber)
    }

    override fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int> {
        return FBTypeDescriptorUtils.getAssociatedVariablesForOutputEvent(myDeclaration, eventNumber)
    }
}
