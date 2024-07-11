package org.fbme.extensions.utils

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
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
            outputEvents = source.outputEvents,
            inputEvents = source.inputEvents,
            parameterOutputs = source.outputParameters,
            parametersInputs = source.inputParameters,
        )

        fun copyPorts(
            declaration: FBInterfaceDeclaration,
            fbTypeDescriptor: FBTypeDescriptor,
            reversed: Boolean,
        ) = copy(
            reversed = reversed,
            declaration = declaration,
            outputEvents = fbTypeDescriptor.eventOutputPorts.map { checkNotNull(it.declaration as EventDeclaration) },
            inputEvents = fbTypeDescriptor.eventInputPorts.map { checkNotNull(it.declaration as EventDeclaration) },
            parameterOutputs = fbTypeDescriptor.dataOutputPorts
                .map { checkNotNull(it.declaration as ParameterDeclaration) },
            parametersInputs = fbTypeDescriptor.dataInputPorts
                .map { checkNotNull(it.declaration as ParameterDeclaration) },
        )

        fun copy(
            reversed: Boolean,
            declaration: FBInterfaceDeclaration,
            outputEvents: List<EventDeclaration>,
            inputEvents: List<EventDeclaration>,
            parameterOutputs: List<ParameterDeclaration>,
            parametersInputs: List<ParameterDeclaration>,
        ) {
            if (reversed) {
                copy(
                    reversed = false,
                    declaration = declaration,
                    outputEvents = inputEvents,
                    inputEvents = outputEvents,
                    parameterOutputs = parametersInputs,
                    parametersInputs = parameterOutputs,
                )
                return
            }
            val newParametersInputs = parametersInputs.map { it.copy() as ParameterDeclaration }
            declaration.inputParameters += newParametersInputs
            val newParameterOutputs = parameterOutputs.map { it.copy() as ParameterDeclaration }
            declaration.outputParameters += newParameterOutputs

            declaration.inputEvents += inputEvents.map { event ->
                (event.copy() as EventDeclaration).also { newEvent ->
                    newEvent.associations.replaceAll { copyAssociation(it, newParametersInputs) }
                }
            }
            declaration.outputEvents += outputEvents.map { event ->
                (event.copy() as EventDeclaration).also { newEvent ->
                    newEvent.associations.replaceAll { copyAssociation(it, newParameterOutputs) }
                }
            }
        }

        fun copyAssociation(
            association: EventAssociation,
            newParametersInputs: List<ParameterDeclaration>
        ): EventAssociation {
            val newAssociation = association.copy() as EventAssociation
            newAssociation.parameterReference.setTarget(
                newParametersInputs.first { it.name == association.parameterReference.getTarget()?.name }
            )
            return newAssociation
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