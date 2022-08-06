package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.CATBlockTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.jdom.Element

class CATBlockTypePrinter(declaration: CATBlockTypeDeclaration) :
        DeclarationPrinterBase<CATBlockTypeDeclaration>(declaration, "CAT") {
    override fun printDeclarationBody(element: Element) {
        element.setAttribute("name", this.element.name)
        element.addContent(CompositeBlockPrinter(this.element.blockDeclaration).print())
//        element.addContent(HMIInterfacePrinter(this.element.hmiInterface).print())
//        element.addContent(SubCATPrinter(this.element.subCATs).print())
    }

    private class CompositeBlockPrinter(fb: CompositeFBTypeDeclaration) :
            DeclarationPrinterBase<CompositeFBTypeDeclaration>(fb, "Composite") {
        override fun printDeclarationBody(element: Element) {
//            element.setAttribute("Type", this.element.typeReference.presentation)
        }
    }
}