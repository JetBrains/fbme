package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.jdom.Element

class AdapterTypePrinter(declaration: AdapterTypeDeclaration) :
    DeclarationPrinterBase<AdapterTypeDeclaration>(declaration, "AdapterType") {
    override fun printDeclarationBody(element: Element) {
        AuxiliaryDataPrinter(this.element, element).print()
        element.addContent(FBInterfacePrinter(this.element, false).print())
        val serviceElement = AdapterServicePrinter(this.element).print()
        if (serviceElement != null) element.addContent(serviceElement)
    }

    private class AdapterServicePrinter(val myDeclaration : AdapterTypeDeclaration) {

        fun print(): Element? {

            // Returns null for adapters made in FBME.
            if (myDeclaration.rightInterface == null) return null

            val serviceElement = Element("Service")
            serviceElement.setAttribute("RightInterface", myDeclaration.rightInterface)
            serviceElement.setAttribute("LeftInterface", myDeclaration.leftInterface)

            val serviceSequenceNames = listOf("request_confirm", "indication_response")
            val serviceSequences = listOf(myDeclaration.requestServiceSequence, myDeclaration.responseServiceSequence)

            for ((serviceSequenceName, serviceSequence) in serviceSequenceNames.zip(serviceSequences)) {
                val serviceSequenceElement = Element("ServiceSequence")
                serviceSequenceElement.setAttribute("Name", serviceSequenceName)
                serviceSequence.forEach { serviceTransactionDeclaration ->
                    val serviceTransactionElement = Element("ServiceTransaction")

                    val input = serviceTransactionDeclaration.input
                    val inputPrimitiveElement = Element("InputPrimitive")
                    inputPrimitiveElement.setAttribute("Interface", input.iface)
                    inputPrimitiveElement.setAttribute("Event", input.event)
                    inputPrimitiveElement.setAttribute("Parameters", input.parameters)
                    serviceTransactionElement.addContent(inputPrimitiveElement)

                    val output = serviceTransactionDeclaration.output
                    val outputPrimitiveElement = Element("OutputPrimitive")
                    outputPrimitiveElement.setAttribute("Interface", output.iface)
                    outputPrimitiveElement.setAttribute("Event", output.event)
                    outputPrimitiveElement.setAttribute("Parameters", output.parameters)
                    serviceTransactionElement.addContent(outputPrimitiveElement)

                    serviceSequenceElement.addContent(serviceTransactionElement)
                }
                serviceElement.addContent(serviceSequenceElement)
            }

            return serviceElement
        }
    }
}
