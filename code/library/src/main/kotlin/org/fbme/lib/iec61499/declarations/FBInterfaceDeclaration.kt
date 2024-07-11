package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.descriptors.SocketType

interface FBInterfaceDeclaration : Declaration {
    val inputEvents: MutableList<EventDeclaration>
    val outputEvents: MutableList<EventDeclaration>
    val inputParameters: MutableList<ParameterDeclaration>
    val outputParameters: MutableList<ParameterDeclaration>
    val templateTypeDescriptor: FBTypeDescriptor
        get() {
            if (this is FBTypeDeclaration) {
                return this.typeDescriptor
            }
            if (this is SubapplicationTypeDeclaration) {
                return this.typeDescriptor
            }
            if (this is AdapterTypeDeclaration) {
                return SocketType(this)
            }
            throw IllegalArgumentException("Unknown declaration with FB interface: " + this.javaClass.name)
        }

    fun isEmpty(): Boolean = inputEvents.isEmpty() &&
            outputEvents.isEmpty() &&
            inputParameters.isEmpty() &&
            outputParameters.isEmpty()

    fun copyEvents(declaration: FBInterfaceDeclaration) {
        inputEvents += declaration.inputEvents.map { it.copy() as EventDeclaration }
        outputEvents += declaration.outputEvents.map { it.copy() as EventDeclaration }
    }

    fun copyParameters(declaration: FBInterfaceDeclaration) {
        inputParameters += declaration.inputParameters.map { it.copy() as ParameterDeclaration }
        outputParameters += declaration.outputParameters.map { it.copy() as ParameterDeclaration }
    }
}
