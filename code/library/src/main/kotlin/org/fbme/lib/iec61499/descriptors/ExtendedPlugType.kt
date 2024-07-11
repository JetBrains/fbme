package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration

class ExtendedPlugType(override val myDeclaration: ExtendedAdapterTypeDeclaration) : PlugType(myDeclaration) {
    override val eventInputPorts: List<FBPortDescriptor>
        get() = myDeclaration.outputEvents.asSequence()
            .plus(myDeclaration.internalFbSocketInterface?.outputEvents?.asSequence() ?: sequenceOf())
            .toEventPortDescriptors(isInput = true)
            .toList()
    override val eventOutputPorts: List<FBPortDescriptor>
        get() = myDeclaration.inputEvents.asSequence()
            .plus(myDeclaration.internalFbSocketInterface?.inputEvents?.asSequence() ?: sequenceOf())
            .toEventPortDescriptors(isInput = false)
            .toList()
    override val dataInputPorts: List<FBPortDescriptor>
        get() = myDeclaration.outputParameters.asSequence()
            .plus(myDeclaration.internalFbSocketInterface?.outputParameters?.asSequence() ?: sequenceOf())
            .run { myDeclaration.outputRouter?.let { plus(it) } ?: this }
            .toParametersPortDescriptors(isInput = true)
            .toList()
    override val dataOutputPorts: List<FBPortDescriptor>
        get() = myDeclaration.inputParameters.asSequence()
            .plus(myDeclaration.internalFbSocketInterface?.inputParameters?.asSequence() ?: sequenceOf())
            .run { myDeclaration.inputRouter?.let { plus(it) } ?: this }
            .toParametersPortDescriptors(isInput = false)
            .toList()

    override fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int> {
        if (myDeclaration.inputRouter != null) {
            return super.getAssociatedVariablesForInputEvent(eventNumber) + dataOutputPorts.size
        }
        return super.getAssociatedVariablesForInputEvent(eventNumber)
    }

    override fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int> {
        if (myDeclaration.outputRouter != null) {
            return super.getAssociatedVariablesForInputEvent(eventNumber) + dataInputPorts.size
        }
        return super.getAssociatedVariablesForOutputEvent(eventNumber)
    }
}
