package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.iec61499.declarations.extention.AdapterNetworkDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration

class InternalSocketType(
    override val myDeclaration: ExtendedAdapterTypeDeclaration,
    private val networkDeclaration: AdapterNetworkDeclaration,
) : SocketType(myDeclaration) {
    override val eventInputPorts: List<FBPortDescriptor>
        get() = myDeclaration.inputEvents.asSequence()
            .plus(
                if (extendSocket()) {
                    myDeclaration.internalFbSocketInterface?.inputEvents
                } else {
                    myDeclaration.internalNetworksInterface?.outputEvents
                }?.asSequence() ?: sequenceOf()
            )
            .toEventPortDescriptors(isInput = true)
            .toList()
    override val eventOutputPorts: List<FBPortDescriptor>
        get() = myDeclaration.outputEvents.asSequence()
            .plus(
                if (extendSocket()) {
                    myDeclaration.internalFbSocketInterface?.outputEvents
                } else {
                    myDeclaration.internalNetworksInterface?.inputEvents
                }?.asSequence() ?: sequenceOf()
            )
            .toEventPortDescriptors(isInput = false)
            .toList()
    override val dataInputPorts: List<FBPortDescriptor>
        get() = myDeclaration.inputParameters.asSequence()
            .plus(
                if (extendSocket()) {
                    myDeclaration.internalFbSocketInterface?.inputParameters
                } else {
                    myDeclaration.internalNetworksInterface?.outputParameters
                }?.asSequence() ?: sequenceOf()
            )
            .toParametersPortDescriptors(isInput = true)
            .toList()
    override val dataOutputPorts: List<FBPortDescriptor>
        get() = myDeclaration.outputParameters.asSequence()
            .plus(
                if (extendSocket()) {
                    myDeclaration.internalFbSocketInterface?.outputParameters
                } else {
                    myDeclaration.internalNetworksInterface?.inputParameters
                }?.asSequence() ?: sequenceOf()
            )
            .toParametersPortDescriptors(isInput = false)
            .toList()

    private fun extendSocket() = networkDeclaration.networkType().extendSocket
}
