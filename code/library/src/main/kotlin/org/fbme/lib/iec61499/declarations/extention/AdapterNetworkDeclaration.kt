package org.fbme.lib.iec61499.declarations.extention

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptorImpl
import org.fbme.lib.iec61499.fbnetwork.CustomNetworkComponentProvider

interface AdapterNetworkDeclaration : Declaration, CustomNetworkComponentProvider, DeclarationWithNetwork {
    override val container: ExtendedAdapterTypeDeclaration

    fun internalFbPlugDescriptor(): FBTypeDescriptor {
        val adapter = container
        val extendPlug = networkType().extendPlug
        return FBTypeDescriptorImpl(
            typeName = this.name,
            declaration = this,
            eventInputPorts = adapter.outputEvents.asSequence()
                .plus(adapter.takeIf { extendPlug }
                    ?.fbToPlugInterface?.outputEvents?.asSequence()
                    ?: sequenceOf()
                )
                .toEventPortDescriptors(isInput = true)
                .toList(),
            eventOutputPorts = adapter.inputEvents.asSequence()
                .plus(adapter.takeIf { extendPlug }
                    ?.fbToPlugInterface?.inputEvents?.asSequence()
                    ?: sequenceOf()
                )
                .toEventPortDescriptors(isInput = false)
                .toList(),
            dataInputPorts = adapter.outputParameters.asSequence()
                .plus(adapter.takeIf { extendPlug }
                    ?.fbToPlugInterface?.outputParameters?.asSequence()
                    ?: sequenceOf()
                )
                .toParametersPortDescriptors(isInput = true)
                .toList(),
            dataOutputPorts = adapter.inputParameters.asSequence()
                .plus(adapter.takeIf { extendPlug }
                    ?.fbToPlugInterface?.inputParameters?.asSequence()
                    ?: sequenceOf()
                )
                .toParametersPortDescriptors(isInput = false)
                .toList(),
        )
    }

    fun internalFbSocketDescriptor(): FBTypeDescriptor {
        val adapter = container
        val extendSocket = networkType().extendSocket
        return FBTypeDescriptorImpl(
            typeName = this.name,
            declaration = this,
            eventInputPorts = adapter.inputEvents.asSequence()
                .plus(adapter.takeIf { extendSocket }
                    ?.socketToFbInterface?.outputEvents?.asSequence()
                    ?: sequenceOf()
                )
                .toEventPortDescriptors(isInput = true)
                .toList(),
            eventOutputPorts = adapter.outputEvents.asSequence()
                .plus(adapter.takeIf { extendSocket }
                    ?.socketToFbInterface?.inputEvents?.asSequence()
                    ?: sequenceOf()
                )
                .toEventPortDescriptors(isInput = false)
                .toList(),
            dataInputPorts = adapter.inputParameters.asSequence()
                .plus(adapter.takeIf { extendSocket }
                    ?.socketToFbInterface?.outputParameters?.asSequence()
                    ?: sequenceOf()
                )
                .toParametersPortDescriptors(isInput = true)
                .toList(),
            dataOutputPorts = adapter.outputParameters.asSequence()
                .plus(adapter.takeIf { extendSocket }
                    ?.socketToFbInterface?.inputParameters?.asSequence()
                    ?: sequenceOf()
                )
                .toParametersPortDescriptors(isInput = false)
                .toList(),
        )
    }

    fun networkType(): NetworkType =
        if (container.leftNetwork == null || container.rightNetwork == null) {
            NetworkType.SINGLE
        } else if (container.rightNetwork == this) {
            NetworkType.RIGHT
        } else if (container.leftNetwork == this) {
            NetworkType.LEFT
        } else {
            error("Container doesn't contain this network")
        }

    enum class NetworkType(
        val extendSocket: Boolean,
        val extendPlug: Boolean,
    ) {
        LEFT(false, true),
        RIGHT(true, false),
        SINGLE(true, true),
    }
}

