package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration
import org.jdom.Element

class SubappNetworkPrinter(network: SubappNetwork) : FBNetworkPrinter<SubappNetwork>(network, "SubAppNetwork") {
    override fun printElementBody(element: Element) {
        for (declaration in this.element.subapplications) {
            element.addContent(SubapplicationPrinter(declaration).print())
        }
        super.printElementBody(element)
    }

    private class SubapplicationPrinter(declaration: SubapplicationDeclaration) :
        DeclarationPrinterBase<SubapplicationDeclaration>(declaration, "SubApp") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.typeReference.presentation)
            element.setAttribute("x", "" + this.element.x)
            element.setAttribute("y", "" + this.element.y)
        }
    }
}
