package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeFBTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<CompositeFBTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): CompositeFBTypeDeclaration {
        checkNotNull(element)
        val fbtd = factory.createCompositeFBTypeDeclaration(identifier)
        FBInterfaceConverter(this, fbtd).extractInterface()
        FBInterfaceAdaptersConverter(this, fbtd).extractAdapters()
        FBNetworkConverter(with(element.getChild("FBNetwork")), fbtd.network).extractNetwork()
        return fbtd
    }
}