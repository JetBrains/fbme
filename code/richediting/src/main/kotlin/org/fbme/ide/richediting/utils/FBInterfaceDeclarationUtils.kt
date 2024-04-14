package org.fbme.ide.richediting.utils

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

class FBInterfaceDeclarationUtils(
    private val factory: IEC61499Factory,
) {
    companion object {
        fun copyPorts(
            target: FBInterfaceDeclaration,
            source: FBInterfaceDeclaration,
            reversed: Boolean,
        ) = copy(
            reversed = reversed,
            declaration = target,
            outputEvents = source.outputEvents.map { it.copy() as EventDeclaration },
            inputEvents = source.inputEvents.map { it.copy() as EventDeclaration },
            parameterOutputs = source.outputParameters.map { it.copy() as ParameterDeclaration },
            parametersInputs = source.inputParameters.map { it.copy() as ParameterDeclaration },
        )

        fun copyPorts(
            declaration: FBInterfaceDeclaration,
            fbTypeDescriptor: FBTypeDescriptor,
            reversed: Boolean,
        ) = copy(
            reversed = reversed,
            declaration = declaration,
            outputEvents = fbTypeDescriptor.eventOutputPorts
                .map { checkNotNull(it.declaration?.copy() as? EventDeclaration) },
            inputEvents = fbTypeDescriptor.eventInputPorts
                .map { checkNotNull(it.declaration?.copy() as? EventDeclaration) },
            parameterOutputs = fbTypeDescriptor.dataOutputPorts
                .map { checkNotNull(it.declaration?.copy() as? ParameterDeclaration) },
            parametersInputs = fbTypeDescriptor.dataInputPorts
                .map { checkNotNull(it.declaration?.copy() as? ParameterDeclaration) }
        )

        fun copy(
            reversed: Boolean,
            declaration: FBInterfaceDeclaration,
            outputEvents: List<EventDeclaration>,
            inputEvents: List<EventDeclaration>,
            parameterOutputs: List<ParameterDeclaration>,
            parametersInputs: List<ParameterDeclaration>
        ) {
            if (reversed) {
                declaration.inputEvents += outputEvents
                declaration.outputEvents += inputEvents
                declaration.inputParameters += parameterOutputs
                declaration.outputParameters += parametersInputs
                return
            }
            declaration.inputEvents += inputEvents
            declaration.outputEvents += outputEvents
            declaration.inputParameters += parametersInputs
            declaration.outputParameters += parameterOutputs
        }
    }

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

}