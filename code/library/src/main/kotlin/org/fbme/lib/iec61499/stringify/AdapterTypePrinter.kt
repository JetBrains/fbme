package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.DeclarationWithInterfaceSection
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.jdom.Element

class AdapterTypePrinter(declaration: AdapterTypeDeclaration) :
    DeclarationPrinterBase<AdapterTypeDeclaration>(declaration, "AdapterType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinter(this.element, false).print())
        element.addContent(FBNetworkPrinter(this.element.network).print())
        printRouters(element)
        printInternalInterfaces(element, this.element)
    }

    private fun printRouters(element: Element) {
        printParameter(root = element, parameterElementName = "inputRouter", declaration = this.element.inputRouter)
        printParameter(root = element, parameterElementName = "outputRouter", declaration = this.element.outputRouter)
    }

    private fun printInternalInterfaces(element: Element, declaration: AdapterTypeDeclaration) {
        addNullableContent(
            element,
            printDeclarationWithInterface(declaration.socketToFbInterface, "socketToFbInterface"),
        )
        addNullableContent(
            element,
            printDeclarationWithInterface(declaration.fbToPlugInterface, "fbToPlugInterface"),
        )
    }

    private fun printDeclarationWithInterface(
        fbInterface: DeclarationWithInterfaceSection?,
        name: String,
    ) = fbInterface?.let {
        val child = Element(name)
        child.addContent(FBInterfacePrinter(fbInterface, false).print())
    }

    private fun printParameter(root: Element, parameterElementName: String, declaration: ParameterDeclaration?) {
        val createdElement = ParameterDeclarationPrinter.printAll(parameterElementName, listOfNotNull(declaration))
        addNullableContent(root, createdElement)
    }

}
