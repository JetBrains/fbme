package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.DeviceTypeDeclaration
import org.jdom.Element

class DeviceTypePrinter(declaration: DeviceTypeDeclaration) :
    DeclarationPrinterBase<DeviceTypeDeclaration>(declaration, "DeviceType") {
    override fun printDeclarationBody(element: Element) {
        ParameterDeclarationPrinter.printAll(this.element.parameters, element)
        for (resourceTypeReference in this.element.instantiableResourceTypes) {
            val resourceTypeName = Element("ResourceTypeName")
            resourceTypeName.setAttribute("Name", resourceTypeReference.resourceType.presentation)
            element.addContent(resourceTypeName)
        }
        for (resourceDeclaration in this.element.resources) {
            element.addContent(ResourcePrinter(resourceDeclaration).print())
        }
        val network = this.element.network
        if (network != null) {
            addNullableContent(element, FBNetworkPrinter(network).printNullable())
        }
    }
}
