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
        fbtd.blockDeclaration.setTargetName(element.getChild("Composite").getAttributeValue("Type"))
        fbtd.hmiInterface.setTargetName(element.getChild("HMI").getAttributeValue("Type"))

        return fbtd
    }
}