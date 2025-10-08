package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AttributeDeclaration
import org.jdom.Element

class AttributeDeclarationPrinter(attribute: AttributeDeclaration) :
    PrinterElementBase<AttributeDeclaration>(attribute, "Attribute") {
    override fun printElementBody(element: Element) {
        element.setAttribute("Name", this.element.name)
        element.setAttribute("Value", this.element.value)
    }

    companion object {
        @JvmStatic
        fun printAll(attributes: List<AttributeDeclaration>, element: Element) {
            for (attribute in attributes) {
                element.addContent(AttributeDeclarationPrinter(attribute).print())
            }
        }
    }
}