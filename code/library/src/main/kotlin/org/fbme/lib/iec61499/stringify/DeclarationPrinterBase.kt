package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Declaration
import org.jdom.Element

abstract class DeclarationPrinterBase<DeclarationT : Declaration>(declaration: DeclarationT, tag: String) :
    PrinterElementBase<DeclarationT>(declaration, tag) {

    override fun printElementBody(element: Element) {
        element.setAttribute("Name", this.element.name)
        printDeclarationBody(element)
    }

    protected abstract fun printDeclarationBody(element: Element)
}
