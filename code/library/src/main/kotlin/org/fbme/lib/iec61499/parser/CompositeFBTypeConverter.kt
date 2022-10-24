package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

open class CompositeFBTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<CompositeFBTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): CompositeFBTypeDeclaration {
        val fbtd = factory.createCompositeFBTypeDeclaration(identifier)
        FBInterfaceConverter(this, fbtd).extractInterface()
        FBInterfaceAdaptersConverter(this, fbtd).extractAdapters()
        val fbNetworkConverter = createFBNetworkConverter(fbtd)
        fbNetworkConverter.extractNetwork()
        return fbtd
    }

    protected open fun createFBNetworkConverter(fbtd: CompositeFBTypeDeclaration): FBNetworkConverter {
        checkNotNull(element)
        return FBNetworkConverter(with(element.getChild("FBNetwork")), fbtd.network)
    }
}
