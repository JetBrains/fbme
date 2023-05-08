package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.jdom.Element

class ResourcePrinter(declaration: ResourceDeclaration) :
    DeclarationPrinterBase<ResourceDeclaration>(declaration, "Resource") {
    override fun printDeclarationBody(element: Element) {
        element.setAttribute("Type", this.element.typeReference.presentation)
        ParameterAssignmentPrinter.printAll(this.element.parameters, element)
        addNullableContent(element, FBNetworkPrinter(this.element.network).printNullable())
    }
}
