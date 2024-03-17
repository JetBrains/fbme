package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.DeclarationWithInterfaceSection
import org.jdom.Element

class AdapterTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<AdapterTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): AdapterTypeDeclaration {
        val declaration = factory.createAdapterTypeDeclaration(identifier)
        FBInterfaceConverter(this, declaration).extractInterface()
        val element = checkNotNull(element)
        FBNetworkConverter(with(element.getChild("FBNetwork")), declaration.network).extractNetwork()
        extractRouters(element, declaration)
        extractInternalInterfaces(element, declaration)
        return declaration
    }

    private fun extractInternalInterfaces(element: Element, declaration: AdapterTypeDeclaration) {
        declaration.socketToFbInterface =
            extractDeclarationWithInterfaceSection(element.getChild("socketToFbInterface"))
        declaration.fbToPlugInterface =
            extractDeclarationWithInterfaceSection(element.getChild("fbToPlugInterface"))
    }

    private fun extractRouters(element: Element, declaration: AdapterTypeDeclaration) {
        declaration.inputRouter = extractParameter(element, "inputRouter")
        declaration.outputRouter = extractParameter(element, "outputRouter")
    }

    private fun extractParameter(element: Element, fieldName: String) = element.getChild(fieldName)?.let {
        ParameterDeclarationConverter(with(it)).extract()
    }

    private fun extractDeclarationWithInterfaceSection(
        element: Element?,
    ): DeclarationWithInterfaceSection? = element?.let {
        val identifier = identifierLocus.onDeclarationEntered(it)
        val interfaceSection = factory.createDeclarationWithInterfaceSection(identifier)
        FBInterfaceConverter(this.with(it), interfaceSection).extractInterface()
        interfaceSection
    }
}
