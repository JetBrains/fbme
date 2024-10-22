package org.fbme.integration.nxt.exporter

import com.intellij.openapi.ui.Messages
import org.jdom.Element

class CompositeFBTypeDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {

        val ecoElement = rootElement.clone()

        addFBNetworkNameSpaces(ecoElement)
        rewriteFBNetworkIOs(ecoElement)

        return ecoElement
    }

    private fun addFBNetworkNameSpaces(ecoElement: Element) {

        val fbNetwork = ecoElement.getChild("FBNetwork") ?: return
        val fbElementList = fbNetwork.getChildren("FB") ?: return
        val eventConnections = fbNetwork.getChild("EventConnections") ?: return
        val finder = FBNameSpaceFinder()

        fbElementList.forEach { fbElement ->
            val fbType = fbElement.getAttributeValue("Type")
            val fbNamespace = finder.getNamespace(fbType)
            if (fbNamespace == "unknown") {
                // Is this a self-made FB? If so, Namespace should be main.
                fbElement.setAttribute("Namespace", "Main")
            } else {
                fbElement.setAttribute("Namespace", fbNamespace)
            }
        }

        eventConnections.children.forEach { connection ->
            var addAvoidsNodesElement = false
            for (attribute in connection.attributes) {
                if (attribute.name == "dy" || attribute.name == "dx2") {
                    addAvoidsNodesElement = true
                    break
                }
            }
            if (addAvoidsNodesElement) {
                val avoidsNodesElement = Element("AvoidsNodes")
                avoidsNodesElement.setText("false")
                connection.addContent(avoidsNodesElement)
            }
            // TODO: Handle situations where event connections are marked with Point elements. (should result in an avoidsNodesElement)
        }
    }

    private fun rewriteFBNetworkIOs(ecoElement: Element) {
        /* Use the data from all the Connection and EndpointCoordinate elements to write Input and Output
        elements within FBNetwork. These are required in Ecostruxure to make the event and data connections work. */
        val interfaceListElement = ecoElement.getChild("InterfaceList") ?: return
        val eventInputsElement : Element? = interfaceListElement.getChild("EventInputs")
        val eventOutputsElement : Element? = interfaceListElement.getChild("EventOutputs")
        val inputsVarsElement : Element? = interfaceListElement.getChild("InputVars")
        val outputVarsElement : Element? = interfaceListElement.getChild("OutputVars")
        val fbNetworkElement = ecoElement.getChild("FBNetwork") ?: return
        val eventConnectionsElement = fbNetworkElement.getChild("EventConnections") ?: return
        val dataConnectionsElement = fbNetworkElement.getChild("DataConnections")

        if (dataConnectionsElement != null) {
            // Switch the order of DataConnections and EventConnections,
            // so that DataConnections ends up in the last spot.
            fbNetworkElement.removeChild("DataConnections")
            fbNetworkElement.addContent(dataConnectionsElement)
        }

        val eventInputs = mutableListOf<String>()
        val eventOutputs = mutableListOf<String>()
        val inputVars = mutableListOf<String>()
        val outputVars = mutableListOf<String>()

        eventInputsElement?.children?.forEach { eventInputs.add(it.getAttributeValue("Name")) }
        eventOutputsElement?.children?.forEach { eventOutputs.add(it.getAttributeValue("Name")) }
        inputsVarsElement?.children?.forEach { inputVars.add(it.getAttributeValue("Name")) }
        outputVarsElement?.children?.forEach { outputVars.add(it.getAttributeValue("Name")) }

        val ioElementsToAdd = mutableListOf<Element>()
        val elementsToRemove = mutableListOf<Element>()

        fbNetworkElement.getChildren("EndpointCoordinate").forEach { endPointCoordinateElement ->

            val ioName = endPointCoordinateElement.getAttributeValue("Name")
            val x = endPointCoordinateElement.getAttributeValue("x")
            val y = endPointCoordinateElement.getAttributeValue("y")
            val ioElement = Element("TO_BE_SPECIFIED").setAttribute("Name", ioName).setAttribute("x", x).setAttribute("y", y)

            when (ioName) {
                in eventInputs -> ioElement.setName("Input").setAttribute("Type", "Event")
                in eventOutputs -> ioElement.setName("Output").setAttribute("Type", "Event")
                in inputVars -> ioElement.setName("Input").setAttribute("Type", "Data")
                in outputVars -> ioElement.setName("Output").setAttribute("Type", "Data")
            }

            ioElementsToAdd.add(ioElement)
            elementsToRemove.add(endPointCoordinateElement)
        }

        var eventConnectionsElementIndex = fbNetworkElement.children.indexOf(eventConnectionsElement)
        ioElementsToAdd.forEach { ioElement ->
            fbNetworkElement.addContent(eventConnectionsElementIndex, ioElement)
            eventConnectionsElementIndex++
        }

        // EndpointCoordinate elements aren't needed in Ecostruxure.
        elementsToRemove.forEach { fbNetworkElement.removeContent(it) }
    }

}