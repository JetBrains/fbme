package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

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
                return this.socketTypeDescriptor
            }
            throw IllegalArgumentException("Unknown declaration with FB interface: " + this.javaClass.name)
        }
}
