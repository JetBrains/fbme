package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeclarationWithInterfaceSection
import org.fbme.lib.iec61499.declarations.extention.AdapterNetworkDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.jdom.Element

class ExtendedAdapterTypeConverter(arguments: ConverterArguments)
    : DeclarationConverterBase<ExtendedAdapterTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ExtendedAdapterTypeDeclaration {
        val declaration = factory.createExtendedAdapterTypeDeclaration(identifier)
        FBInterfaceConverter(this, declaration).extractInterface()
        val element = checkNotNull(element)
        declaration.leftNetwork = extractNetwork(element.getChild("leftNetwork"))
        declaration.rightNetwork = extractNetwork(element.getChild("rightNetwork"))
        extractRouters(element, declaration)
        extractInternalInterfaces(element, declaration)
        return declaration
    }

    private fun extractNetwork(element: Element?): AdapterNetworkDeclaration? {
        if (element == null) {
            return null
        }
        val identifier = identifierLocus.onDeclarationEntered(element)
        try {
            val network = factory.createAdapterNetworkDeclaration(identifier)
            FBNetworkConverter(with(element.getChild("FBNetwork")), network.network).extractNetwork()
            network.name = element.getAttributeValue("Name")
            return network
        } finally {
            identifierLocus.onDeclarationLeaved()
        }
    }
    private fun extractInternalInterfaces(element: Element, declaration: ExtendedAdapterTypeDeclaration) {
        declaration.internalFbSocketInterface =
            extractDeclarationWithInterfaceSection(element.getChild("internalFbSocketInterface"))
        declaration.internalFbPlugInterface =
            extractDeclarationWithInterfaceSection(element.getChild("internalFbPlugInterface"))
        declaration.internalNetworksInterface =
            extractDeclarationWithInterfaceSection(element.getChild("internalNetworksInterface"))
    }

    private fun extractRouters(element: Element, declaration: ExtendedAdapterTypeDeclaration) {
        declaration.inputRouter = extractParameter(element, "inputRouter")
        declaration.outputRouter = extractParameter(element, "outputRouter")
    }

    private fun extractParameter(element: Element, fieldName: String) = element.getChild(fieldName)?.let {
        ParameterDeclarationConverter(with(it.getChildren("VarDeclaration").first())).extract()
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