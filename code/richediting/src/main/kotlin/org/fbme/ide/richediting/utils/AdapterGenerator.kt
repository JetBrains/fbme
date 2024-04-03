package org.fbme.ide.richediting.utils

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

class AdapterGenerator(
    private val factory: IEC61499Factory,
) {

    fun generateAdapterFromDeclaration(
        declaration: FBInterfaceDeclaration,
        name: String? = null,
        identifier: Identifier? = null,
        reversed: Boolean = false,
    ): AdapterTypeDeclaration {
        val adapterTypeDeclaration = factory.createAdapterTypeDeclaration(
            identifier ?: name?.let { StringIdentifier(name) }
        )
        if (name != null) {
            adapterTypeDeclaration.name = name
        }
        copyPorts(adapterTypeDeclaration, declaration, reversed)
        return adapterTypeDeclaration
    }

    fun generateAdapterFromDescriptor(
        fbTypeDescriptor: FBTypeDescriptor,
        name: String? = null,
        identifier: Identifier? = null,
        reversed: Boolean = false,
    ): AdapterTypeDeclaration {
        val adapterTypeDeclaration = factory.createAdapterTypeDeclaration(
            identifier ?: name?.let { StringIdentifier(name) }
        )
        if (name != null) {
            adapterTypeDeclaration.name = name
        }
        copyPorts(adapterTypeDeclaration, fbTypeDescriptor, reversed)
        return adapterTypeDeclaration
    }

    private fun copyPorts(
        adapterTypeDeclaration: FBInterfaceDeclaration,
        declaration: FBInterfaceDeclaration,
        reversed: Boolean,
    ) = copy(
        reversed = reversed,
        adapterTypeDeclaration = adapterTypeDeclaration,
        outputEvents = declaration.outputEvents.map { it.copy() as EventDeclaration },
        inputEvents = declaration.inputEvents.map { it.copy() as EventDeclaration },
        parameterOutputs = declaration.outputParameters.map { it.copy() as ParameterDeclaration },
        parametersInputs = declaration.inputParameters.map { it.copy() as ParameterDeclaration },
    )

    private fun copyPorts(
        adapterTypeDeclaration: FBInterfaceDeclaration,
        fbTypeDescriptor: FBTypeDescriptor,
        reversed: Boolean,
    ) = copy(
        reversed = reversed,
        adapterTypeDeclaration = adapterTypeDeclaration,
        outputEvents = fbTypeDescriptor.eventOutputPorts
            .map { checkNotNull(it.declaration?.copy() as? EventDeclaration) },
        inputEvents = fbTypeDescriptor.eventInputPorts
            .map { checkNotNull(it.declaration?.copy() as? EventDeclaration) },
        parameterOutputs = fbTypeDescriptor.dataOutputPorts
            .map { checkNotNull(it.declaration?.copy() as? ParameterDeclaration) },
        parametersInputs = fbTypeDescriptor.dataInputPorts
            .map { checkNotNull(it.declaration?.copy() as? ParameterDeclaration) }
    )

    private fun copy(
        reversed: Boolean,
        adapterTypeDeclaration: FBInterfaceDeclaration,
        outputEvents: List<EventDeclaration>,
        inputEvents: List<EventDeclaration>,
        parameterOutputs: List<ParameterDeclaration>,
        parametersInputs: List<ParameterDeclaration>
    ) {
        if (reversed) {
            adapterTypeDeclaration.inputEvents += outputEvents
            adapterTypeDeclaration.outputEvents += inputEvents
            adapterTypeDeclaration.inputParameters += parameterOutputs
            adapterTypeDeclaration.outputParameters += parametersInputs
            return
        }
        adapterTypeDeclaration.inputEvents += inputEvents
        adapterTypeDeclaration.outputEvents += outputEvents
        adapterTypeDeclaration.inputParameters += parametersInputs
        adapterTypeDeclaration.outputParameters += parameterOutputs
    }
}