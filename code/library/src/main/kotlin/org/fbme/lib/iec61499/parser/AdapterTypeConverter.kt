package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration

class AdapterTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<AdapterTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): AdapterTypeDeclaration {
        val declaration = factory.createAdapterTypeDeclaration(identifier)
        FBInterfaceConverter(this, declaration).extractInterface()
        return declaration
    }
}
