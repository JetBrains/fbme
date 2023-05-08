package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration
import org.jdom.Element

class ResourceTypePrinter(declaration: ResourceTypeDeclaration) :
    DeclarationPrinterBase<ResourceTypeDeclaration>(declaration, "ResourceType") {
    override fun printDeclarationBody(element: Element) {
        ParameterDeclarationPrinter.printAll(this.element.parameters, element)
        for (fbTypeReference in this.element.instantiableFBTypes) {
            val resourceTypeName = Element("FBTypeName")
            resourceTypeName.setAttribute("Name", fbTypeReference.fBType.presentation)
            element.addContent(resourceTypeName)
        }
        addNullableContent(element, FBNetworkPrinter(this.element.network).printNullable())
    }
}
