package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.st.types.ArrayType
import org.jdom.Element

class ParameterDeclarationPrinter(declaration: ParameterDeclaration) :
    DeclarationPrinterBase<ParameterDeclaration>(declaration, "VarDeclaration") {
    override fun printDeclarationBody(element: Element) {
        val type = requireNotNull(this.element.type)
        if (type is ArrayType) {
            element.setAttribute("ArraySize", requireNotNull(type.dimensions).stringify())
            element.setAttribute("Type", requireNotNull(type.baseType).stringify())
        } else {
            element.setAttribute("Type", type.stringify())
        }
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
