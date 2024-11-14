package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.jdom.Element

class AdapterTypePrinter(declaration: AdapterTypeDeclaration) :
    DeclarationPrinterBase<AdapterTypeDeclaration>(declaration, "AdapterType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinter(this.element, false).print())
        element.addContent(AdapterServicePrinter(this.element).print()) // Incomplete!
        AuxiliaryDataPrinter(this.element, element).print()
    }

    private class AdapterServicePrinter(val myDeclaration : AdapterTypeDeclaration) {

        fun print(): Element {
            val element1 = Element("Service")
            val element2 = Element("ServiceSequence")
            val element3 = Element("ServiceTransaction")
            val element4 = Element("InputPrimitive")

            element4.setAttribute("Interface", myDeclaration.requestServiceSequences[0].output.iface)
            element4.setAttribute("Event", myDeclaration.requestServiceSequences[0].output.event)
            element4.setAttribute("Parameters", myDeclaration.requestServiceSequences[0].output.parameters)
            element3.setContent(element4)
            element2.setContent(element3)
            element1.setContent(element2)

            return element1
        }
    }

}
