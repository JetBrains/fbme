package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.DeclarationWithInterfaceSection
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.declarations.extention.AdapterNetworkDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.jdom.Element

class ExtendedAdapterTypePrinter(declaration: ExtendedAdapterTypeDeclaration) :
    DeclarationPrinterBase<ExtendedAdapterTypeDeclaration>(declaration, "ExtendedAdapterType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinter(this.element, false).print())
        printNetwork(element, "leftNetwork", this.element.leftNetwork)
        printNetwork(element, "rightNetwork", this.element.rightNetwork)
        printParameter(element, "inputRouter", this.element.inputRouter)
        printParameter(element, "outputRouter", this.element.outputRouter)
        printInternalInterfaces(element, this.element)
    }

    private fun printNetwork(element: Element, name: String, network: AdapterNetworkDeclaration?) {
        if (network == null) {
            return
        }
        element.addContent(
            Element(name).addContent(FBNetworkPrinter(network.network).print())
                .setAttribute("Name", network.name)
        )
    }

    private fun printInternalInterfaces(element: Element, declaration: ExtendedAdapterTypeDeclaration) {
        addNullableContent(
            element,
            printDeclarationWithInterface(declaration.internalFbSocketInterface, "internalFbSocketInterface"),
        )
        addNullableContent(
            element,
            printDeclarationWithInterface(declaration.internalFbPlugInterface, "internalFbPlugInterface"),
        )
        addNullableContent(
            element,
            printDeclarationWithInterface(declaration.internalNetworksInterface, "internalNetworksInterface"),
        )
    }

    private fun printDeclarationWithInterface(
        fbInterface: DeclarationWithInterfaceSection?,
        name: String,
    ) = fbInterface?.let {
        val child = Element(name)
        child.addContent(FBInterfacePrinter(fbInterface, false).print())
            .setAttribute("Name", name)
    }

    private fun printParameter(root: Element, parameterElementName: String, declaration: ParameterDeclaration?) {
        val createdElement = ParameterDeclarationPrinter.printAll(parameterElementName, listOfNotNull(declaration))
        addNullableContent(root, createdElement)
    }
}
