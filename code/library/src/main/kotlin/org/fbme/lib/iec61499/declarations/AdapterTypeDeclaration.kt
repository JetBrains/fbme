package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.descriptors.*
import org.fbme.lib.iec61499.fbnetwork.CustomNetworkComponentProvider
import org.fbme.lib.iec61499.fbnetwork.EntryKind

interface AdapterTypeDeclaration : CustomNetworkComponentProvider, FBInterfaceDeclaration, DeclarationWithNetwork,
    RootElement {
    val plugTypeDescriptor: FBTypeDescriptor
        get() = PlugType(this)
    val socketTypeDescriptor: FBTypeDescriptor
        get() = SocketType(this)

    val internalFbPlugDescriptor: FBTypeDescriptor
        get() = FBTypeDescriptorImpl(
            typeName = this.name,
            declaration = this,
            eventInputPorts = outputEvents.asSequence()
                .plus(fbToPlugInterface?.outputEvents?.asSequence() ?: sequenceOf())
                .toEventPortDescriptors(isInput = true)
                .toList(),
            eventOutputPorts = inputEvents.asSequence()
                .plus(fbToPlugInterface?.inputEvents?.asSequence() ?: sequenceOf())
                .toEventPortDescriptors(isInput = false)
                .toList(),
            dataInputPorts = outputParameters.asSequence()
                .plus(fbToPlugInterface?.outputParameters?.asSequence() ?: sequenceOf())
                .toParametersPortDescriptors(isInput = true)
                .toList(),
            dataOutputPorts = inputParameters.asSequence()
                .plus(fbToPlugInterface?.inputParameters?.asSequence() ?: sequenceOf())
                .toParametersPortDescriptors(isInput = false)
                .toList(),
        )

    val internalFbSocketDescriptor: FBTypeDescriptor
        get() = FBTypeDescriptorImpl(
            typeName = this.name,
            declaration = this,
            eventInputPorts = inputEvents.asSequence()
                .plus(socketToFbInterface?.outputEvents?.asSequence() ?: sequenceOf())
                .toEventPortDescriptors(isInput = true)
                .toList(),
            eventOutputPorts = outputEvents.asSequence()
                .plus(socketToFbInterface?.inputEvents?.asSequence() ?: sequenceOf())
                .toEventPortDescriptors(isInput = false)
                .toList(),
            dataInputPorts = inputParameters.asSequence()
                .plus(socketToFbInterface?.outputParameters?.asSequence() ?: sequenceOf())
                .toParametersPortDescriptors(isInput = true)
                .toList(),
            dataOutputPorts = outputParameters.asSequence()
                .plus(socketToFbInterface?.inputParameters?.asSequence() ?: sequenceOf())
                .toParametersPortDescriptors(isInput = false)
                .toList(),
        )

    var inputRouter: ParameterDeclaration?
    var outputRouter: ParameterDeclaration?
    var socketToFbInterface: DeclarationWithInterfaceSection?
    var fbToPlugInterface: DeclarationWithInterfaceSection?
}

private fun Sequence<EventDeclaration>.toEventPortDescriptors(isInput: Boolean) = mapIndexed { index, event ->
    FBPortDescriptor(
        name = event.name,
        connectionKind = EntryKind.EVENT,
        position = index,
        isInput = isInput,
        isValid = true,
        declaration = event,
    )
}

private fun Sequence<ParameterDeclaration>.toParametersPortDescriptors(isInput: Boolean) =
    mapIndexed { index, event ->
        FBPortDescriptor(
            name = event.name,
            connectionKind = EntryKind.DATA,
            position = index,
            isInput = isInput,
            isValid = true,
            declaration = event,
        )
    }
