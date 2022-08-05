package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.CATBlockTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

class CATBlockTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<CATBlockTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): CATBlockTypeDeclaration {
        checkNotNull(element)
        val fbtd = factory.createCATBlockTypeDeclaration(identifier)
        fbtd.blockDeclaration = CompositeBlockConverter(with(this.element.getChild("Composite"))).extract()
//        FBInterfaceConverter(this, fbtd).extractInterface()
//        FBInterfaceAdaptersConverter(this, fbtd).extractAdapters()
//        FBNetworkConverter(with(element.getChild("SubCAT")), fbtd.network).extractNetwork()
        return fbtd
    }
    private inner class CompositeBlockConverter(arguments: ConverterArguments) :
            DeclarationConverterBase<CompositeFBTypeDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): CompositeFBTypeDeclaration {
            checkNotNull(element)
            val fbd = factory.createCompositeFBTypeDeclaration(identifier)
            return fbd
        }
    }
}