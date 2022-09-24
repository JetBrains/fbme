package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.jdom.Element

class AdapterTypePrinter(declaration: AdapterTypeDeclaration) :
    DeclarationPrinterBase<AdapterTypeDeclaration>(declaration, "AdapterType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinter(this.element, false).print())
    }
}
