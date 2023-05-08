package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.jdom.Element

class CompositeFBTypePrinter(declaration: CompositeFBTypeDeclaration) :
    DeclarationPrinterBase<CompositeFBTypeDeclaration>(declaration, "FBType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinterWithAdapters(this.element).print())
        element.addContent(FBNetworkPrinter(this.element.network).print())
    }
}
