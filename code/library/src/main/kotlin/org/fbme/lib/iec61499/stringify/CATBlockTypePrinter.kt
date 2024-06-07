package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.CATBlockTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.jdom.Element

class CATBlockTypePrinter(declaration: CATBlockTypeDeclaration) :
        DeclarationPrinterBase<CATBlockTypeDeclaration>(declaration, "CAT") {
    override fun printDeclarationBody(element: Element) {
        element.setAttribute("name", this.element.name)
        element.addContent(CompositePrinter(this.element).print())
        element.addContent(HMIPrinter(this.element).print())
    }

    private class CompositePrinter(fb: CATBlockTypeDeclaration) :
        DeclarationPrinterBase<CATBlockTypeDeclaration>(fb, "Composite") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.blockDeclaration.presentation)
        }
    }

    private class HMIPrinter(fb: CATBlockTypeDeclaration) :
        DeclarationPrinterBase<CATBlockTypeDeclaration>(fb, "HMI") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.hmiInterface.presentation)
            element.setAttribute("InterfaceFile", this.element.interfaceFileName)
        }
    }
}