package org.fbme.integration.nxt.exporter

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.jdom.Element

class AdapterTypeEcoConverter(private val adapter: AdapterTypeDeclaration, fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {
        val ecoElement = rootElement.clone()
        generateServiceElement(ecoElement)
        return ecoElement
    }

    private fun generateServiceElement(ecoElement: Element) {

        if (ecoElement.getChild("Service") != null) return

        val serviceElement = Element("Service")
        serviceElement.setAttribute("RightInterface", "PLUG")
        serviceElement.setAttribute("LeftInterface", "SOCKET")

        val serviceSequenceElementREQCNF = Element("ServiceSequence")
        serviceSequenceElementREQCNF.setAttribute("Name", "request_confirm")
        val serviceSequenceElementINDRSP = Element("ServiceSequence")
        serviceSequenceElementINDRSP.setAttribute("Name", "indication_response")
        val serviceSequenceElements = listOf(serviceSequenceElementREQCNF, serviceSequenceElementINDRSP)

        val usedInputParams = mutableSetOf<String>()
        val usedOutputParams = mutableSetOf<String>()

        for (serviceSequenceElement in serviceSequenceElements) {

            val serviceTransactionElement1 = Element("ServiceTransaction")
            val serviceTransactionElement2 = Element("ServiceTransaction")
            val serviceTransactionElements = listOf(serviceTransactionElement1, serviceTransactionElement2)

            for ((index, serviceTransactionElement) in serviceTransactionElements.withIndex()) {

                val name = serviceSequenceElement.getAttributeValue("Name")
                val interFaces = if (name == "request_confirm" && index == 0) {
                    listOf("SOCKET", "PLUG")
                } else if (name == "request_confirm" && index == 1) {
                    listOf("PLUG", "SOCKET")
                } else if (name == "indication_response" && index == 0) {
                    listOf("PLUG", "SOCKET")
                } else {
                    listOf("SOCKET", "PLUG")
                }

                val (event, parameters) = run {
                    fun getEventAndParam(
                        eventList: List<EventDeclaration>,
                        paramList: List<ParameterDeclaration>,
                        usedParams: MutableSet<String>,
                        eventIndex: Int,
                        defaultEvent: String,
                        defaultParam: String
                    ): Pair<String, String> {
                        val E = eventList.getOrNull(eventIndex)
                        val eName = E?.name ?: defaultEvent
                        val pName = E?.associations
                            ?.mapNotNull { it.parameterReference.presentation }
                            ?.firstOrNull { !usedParams.contains(it) }
                            ?: paramList.firstOrNull { !usedParams.contains(it.name) }?.name
                            ?: defaultParam
                        usedParams.add(pName)
                        return eName to pName
                    }

                    when {
                        name == "request_confirm" && index == 0 ->
                            getEventAndParam(adapter.inputEvents, adapter.inputParameters, usedInputParams, 0, "REQ", "REQD")
                        name == "request_confirm" && index == 1 ->
                            getEventAndParam(adapter.outputEvents, adapter.outputParameters, usedOutputParams, 0, "CNF", "CNFD")
                        name == "indication_response" && index == 0 ->
                            getEventAndParam(adapter.outputEvents, adapter.outputParameters, usedOutputParams, 1, "IND", "INDD")
                        else ->
                            getEventAndParam(adapter.inputEvents, adapter.inputParameters, usedInputParams, 1, "RSP", "RSPD")
                    }
                }

                val inputPrimitiveElement = Element("InputPrimitive")
                inputPrimitiveElement.setAttribute("Interface", interFaces[0])
                inputPrimitiveElement.setAttribute("Event", event)
                inputPrimitiveElement.setAttribute("Parameters", parameters)

                val outputPrimitiveElement = Element("OutputPrimitive")
                outputPrimitiveElement.setAttribute("Interface", interFaces[1])
                outputPrimitiveElement.setAttribute("Event", event)
                outputPrimitiveElement.setAttribute("Parameters", parameters)

                serviceTransactionElement.addContent(inputPrimitiveElement)
                serviceTransactionElement.addContent(outputPrimitiveElement)
            }

            serviceSequenceElement.addContent(serviceTransactionElement1)
            serviceSequenceElement.addContent(serviceTransactionElement2)
        }

        serviceElement.addContent(serviceSequenceElementREQCNF)
        serviceElement.addContent(serviceSequenceElementINDRSP)
        ecoElement.addContent(serviceElement)
    }
}