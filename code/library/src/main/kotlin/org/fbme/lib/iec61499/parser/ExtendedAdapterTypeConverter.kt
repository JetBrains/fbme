package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeclarationWithInterfaceSection
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.jdom.Element

class ExtendedAdapterTypeConverter(arguments: ConverterArguments)
    : DeclarationConverterBase<ExtendedAdapterTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ExtendedAdapterTypeDeclaration {
        val declaration = factory.createExtendedAdapterTypeDeclaration(identifier)
        FBInterfaceConverter(this, declaration).extractInterface()
        val element = checkNotNull(element)
        FBNetworkConverter(with(element.getChild("FBNetwork")), declaration.network).extractNetwork()
        extractRouters(element, declaration)
        extractInternalInterfaces(element, declaration)
        return declaration
    }

    private fun extractInternalInterfaces(element: Element, declaration: ExtendedAdapterTypeDeclaration) {
        declaration.socketToFbInterface =
            extractDeclarationWithInterfaceSection(element.getChild("socketToFbInterface"))
        declaration.fbToPlugInterface =
            extractDeclarationWithInterfaceSection(element.getChild("fbToPlugInterface"))
    }

    private fun extractRouters(element: Element, declaration: ExtendedAdapterTypeDeclaration) {
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
        try {
            val interfaceSection = factory.createDeclarationWithInterfaceSection(identifier)
            FBInterfaceConverter(this.with(it), interfaceSection).extractInterface()
            interfaceSection
        } finally {
            identifierLocus.onDeclarationLeaved()
        }
    }
}