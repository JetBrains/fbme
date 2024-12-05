package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.NamespaceFinder
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.jdom.Element

class ResourcePrinter(declaration: ResourceDeclaration) :
    DeclarationPrinterBase<ResourceDeclaration>(declaration, "Resource") {
    override fun printDeclarationBody(element: Element) {
        if (this.element.id != null) {
            element.setAttribute("ID", this.element.id)
        }
        val type = this.element.typeReference.presentation
        element.setAttribute("Type", type)
        val namespace = if (this.element.namespace != null) {
            this.element.namespace
        } else {
            NamespaceFinder.getNamespace(type)
        }
        element.setAttribute("Namespace", namespace)
        ParameterAssignmentPrinter.printAll(this.element.parameters, element)
        addNullableContent(element, FBNetworkPrinter(this.element.network).printNullable())
    }
}
