package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration
import org.jdom.Element

class SubappTypePrinter(declaration: SubapplicationTypeDeclaration) :
    DeclarationPrinterBase<SubapplicationTypeDeclaration>(declaration, "SubAppType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinter(this.element, true).print())
        element.addContent(SubappNetworkPrinter(this.element.network).print())
    }
}
