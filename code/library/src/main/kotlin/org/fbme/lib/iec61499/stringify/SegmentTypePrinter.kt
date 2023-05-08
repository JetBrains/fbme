package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.SegmentTypeDeclaration
import org.jdom.Element

class SegmentTypePrinter(declaration: SegmentTypeDeclaration) :
    DeclarationPrinterBase<SegmentTypeDeclaration>(declaration, "SegmentType") {
    override fun printDeclarationBody(element: Element) {
        ParameterDeclarationPrinter.printAll(this.element.parameters, element)
    }
}
