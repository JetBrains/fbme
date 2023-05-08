package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.jdom.Element

class ParameterDeclarationPrinter(declaration: ParameterDeclaration) :
    DeclarationPrinterBase<ParameterDeclaration>(declaration, "VarDeclaration") {
    override fun printDeclarationBody(element: Element) {
        element.setAttribute("Type", requireNotNull(this.element.type).stringify())
        val initialValue = this.element.initialValue
        if (initialValue != null) {
            element.setAttribute("InitialValue", STPrinter.printLiteral(initialValue))
        }
    }

    companion object {
        fun printAll(collectionTag: String?, declarations: List<ParameterDeclaration>): Element? {
            if (declarations.isEmpty()) {
                return null
            }
            val element = Element(collectionTag)
            printAll(declarations, element)
            return element
        }

        @JvmStatic
        fun printAll(declarations: List<ParameterDeclaration>, element: Element) {
            for (declaration in declarations) {
                element.addContent(ParameterDeclarationPrinter(declaration).print())
            }
        }
    }
}
