package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration

class SubappTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<SubapplicationTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): SubapplicationTypeDeclaration {
        checkNotNull(element)
        val subappnetworkElement = element.getChild("SubAppNetwork")
        val std = factory.createSubapplicationTypeDeclaration(identifier)
        FBInterfaceConverter(this, std).extractSubappInterface()
        SubappNetworkConverter(with(subappnetworkElement), std.network).extractNetwork()
        return std
    }
}
