package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration
import org.jdom.Element

class ServiceInterfaceFBTypePrinter(declaration: ServiceInterfaceFBTypeDeclaration) :
    DeclarationPrinterBase<ServiceInterfaceFBTypeDeclaration>(declaration, "FBType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinter(this.element, false).print())
    }
}
