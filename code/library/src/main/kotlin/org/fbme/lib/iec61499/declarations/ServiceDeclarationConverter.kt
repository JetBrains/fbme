package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration

class ServiceDeclarationConverter(arguments: ConverterArguments, private val declaration: AdapterTypeDeclaration) :
    ConverterBase(arguments) {

    fun extractService() {

        // Extract all data from Attribute children.
        val serviceElement = element?.getChild("Service") ?: return

        val serviceSequenceElements = serviceElement.getChildren("ServiceSequence")

        var firstIteration = true

        serviceSequenceElements.forEach { serviceSequenceElement ->

            val serviceTransactionElements = serviceSequenceElement.getChildren("ServiceTransaction")

            serviceTransactionElements.forEach { serviceTransactionElement ->

                val inputPrimitiveDeclaration = factory.createIOPrimitiveDeclaration()
                val inputPrimitiveElement = serviceTransactionElement.getChild("InputPrimitive")
                inputPrimitiveDeclaration.iface = inputPrimitiveElement.getAttributeValue("Interface")
                inputPrimitiveDeclaration.event = inputPrimitiveElement.getAttributeValue("Event")
                inputPrimitiveDeclaration.parameters = inputPrimitiveElement.getAttributeValue("Parameters")

                val outputPrimitiveDeclaration = factory.createIOPrimitiveDeclaration()
                val outputPrimitiveElement = serviceTransactionElement.getChild("OutputPrimitive")
                outputPrimitiveDeclaration.iface = outputPrimitiveElement.getAttributeValue("Interface")
                outputPrimitiveDeclaration.event = outputPrimitiveElement.getAttributeValue("Event")
                outputPrimitiveDeclaration.parameters = outputPrimitiveElement.getAttributeValue("Parameters")

                val serviceTransaction = factory.createServiceTransactionDeclaration()
                serviceTransaction.input = inputPrimitiveDeclaration
                serviceTransaction.output = outputPrimitiveDeclaration

                if (firstIteration) {
                    declaration.requestServiceSequences.add(serviceTransaction)
                } else {
                    declaration.responseServiceSequences.add(serviceTransaction)
                }
            }
            firstIteration = false
        }

        declaration.rightInterface = serviceElement.getAttributeValue("RightInterface")
        declaration.leftInterface = serviceElement.getAttributeValue("LeftInterface")
    }

}

