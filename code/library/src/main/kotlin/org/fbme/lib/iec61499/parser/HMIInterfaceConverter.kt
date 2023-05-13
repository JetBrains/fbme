package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.CATBlockTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.HMIInterfaceTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

class HMIInterfaceConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<HMIInterfaceTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): HMIInterfaceTypeDeclaration {
        checkNotNull(element)
        val fbtd = factory.createHMIBlockTypeDeclaration(identifier)
        val interfaceListElement = element.getChild("InterfaceList")
        ParameterDeclarationConverter.extractAll(
            with(interfaceListElement.getChild("InputVars")),
            fbtd.inputParameters
        )
        ParameterDeclarationConverter.extractAll(
            with(interfaceListElement.getChild("InputVars")),
            fbtd.outputParameters
        )

        return fbtd
    }
}