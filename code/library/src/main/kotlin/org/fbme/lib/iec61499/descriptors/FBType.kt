package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters

class FBType(private val myDeclaration: FBInterfaceDeclarationWithAdapters) : FBTypeDescriptor {
    override val typeName: String
        get() = myDeclaration.name
    override val declaration: Declaration
        get() = myDeclaration
    override val eventInputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getEventInputPorts(myDeclaration)
    override val eventOutputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getEventOutputPorts(myDeclaration)
    override val dataInputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getDataInputPorts(myDeclaration)
    override val dataOutputPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getDataOutputPorts(myDeclaration)
    override val socketPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getSocketPorts(myDeclaration)
    override val plugPorts: List<FBPortDescriptor>
        get() = FBTypeDescriptorUtils.getPlugPorts(myDeclaration)

    override fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int> {
        return FBTypeDescriptorUtils.getAssociatedVariablesForInputEvent(myDeclaration, eventNumber)
    }

    override fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int> {
        return FBTypeDescriptorUtils.getAssociatedVariablesForOutputEvent(myDeclaration, eventNumber)
    }
}
