package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration

class ExtendedSocketType(override val myDeclaration: ExtendedAdapterTypeDeclaration) : SocketType(myDeclaration) {
    override val eventInputPorts: List<FBPortDescriptor>
        get() = myDeclaration.inputEvents.asSequence()
            .plus(myDeclaration.internalFbPlugInterface?.outputEvents?.asSequence() ?: sequenceOf())
            .toEventPortDescriptors(isInput = true)
            .toList()
    override val eventOutputPorts: List<FBPortDescriptor>
        get() = myDeclaration.outputEvents.asSequence()
            .plus(myDeclaration.internalFbPlugInterface?.inputEvents?.asSequence() ?: sequenceOf())
            .toEventPortDescriptors(isInput = false)
            .toList()
    override val dataInputPorts: List<FBPortDescriptor>
        get() = myDeclaration.inputParameters.asSequence()
            .plus(myDeclaration.internalFbPlugInterface?.outputParameters?.asSequence() ?: sequenceOf())
            .toParametersPortDescriptors(isInput = true)
            .toList()
    override val dataOutputPorts: List<FBPortDescriptor>
        get() = myDeclaration.outputParameters.asSequence()
            .plus(myDeclaration.internalFbPlugInterface?.inputParameters?.asSequence() ?: sequenceOf())
            .toParametersPortDescriptors(isInput = false)
            .toList()
}
