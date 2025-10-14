package org.fbme.integration.nxt.exporter

import org.fbme.lib.iec61499.NamespaceFinder
import org.jdom.Element

class CompositeFBTypeDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {
        val ecoElement = rootElement.clone()
        addInterfaceListNameSpaces(ecoElement)
        addFBNetworkNameSpaces(ecoElement)
        rewriteFBNetworkIOs(ecoElement)
        reorganizeConnections(ecoElement)
        return ecoElement
    }

    private fun addInterfaceListNameSpaces(ecoElement: Element) {

        // TODO dont print anything that is 0.
        // TODO place dy before dx.
        // TODO: place namespace after type (now it is last after all coordinates).

        // Add namespaces to all items in <Plugs> and <Sockets>.
        val fbInterfaceListElement = ecoElement.getChild("InterfaceList") ?: return
        val plugsElement = fbInterfaceListElement.getChild("Plugs")
        val socketsElement = fbInterfaceListElement.getChild("Sockets")

        socketsElement?.children?.forEach { adapterDeclarationElement ->
            val adapterType = adapterDeclarationElement.getAttributeValue("Type")
            val adapterNamespace = NamespaceFinder.getNamespace(adapterType)
            adapterDeclarationElement.setAttribute("Namespace", adapterNamespace)
            addAvoidsNodeElement(adapterDeclarationElement)
        }

        plugsElement?.children?.forEach { adapterDeclarationElement ->
            val adapterType = adapterDeclarationElement.getAttributeValue("Type")
            val adapterNamespace = NamespaceFinder.getNamespace(adapterType)
            adapterDeclarationElement.setAttribute("Namespace", adapterNamespace)
            addAvoidsNodeElement(adapterDeclarationElement)
        }
    }

    private fun addFBNetworkNameSpaces(ecoElement: Element) {

        // TODO place dy before dx
        // TODO: place namespace after type (now it is last after all coordinates)

        val fbNetwork = ecoElement.getChild("FBNetwork") ?: return
        val fbElementList = fbNetwork.getChildren("FB") ?: return

        fbElementList.forEach { fbElement ->
            val fbType = fbElement.getAttributeValue("Type")
            val fbNamespace = NamespaceFinder.getNamespace(fbType)
            fbElement.setAttribute("Namespace", fbNamespace)
            addAvoidsNodeElement(fbElement)
        }

        val eventConnections = fbNetwork.getChild("EventConnections")
        eventConnections?.children?.forEach { addAvoidsNodeElement(it) }

        val dataConnections = fbNetwork.getChild("DataConnections")
        dataConnections?.children?.forEach { addAvoidsNodeElement(it) }
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
        val eventConnectionsElement = fbNetworkElement.getChild("EventConnections")
        val dataConnectionsElement = fbNetworkElement.getChild("DataConnections")

        if (dataConnectionsElement != null) {
            // Switch the order of DataConnections and EventConnections,
            // so that DataConnections ends up in the last spot.
            fbNetworkElement.removeChild("DataConnections")
            fbNetworkElement.addContent(dataConnectionsElement)
        }

        for (eventConnection in eventConnectionsElement?.children ?: emptyList()) {
            eventConnection.removeChildren("BendPoints")
        }
        for (dataConnection in dataConnectionsElement?.children ?: emptyList()) {
            dataConnection.removeChildren("BendPoints")
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

    private fun addAvoidsNodeElement(element: Element) {
        var addAvoidsNodesElement = false
        for (attribute in element.attributes) {
            if (attribute.name == "dy" || attribute.name == "dx2") {
                addAvoidsNodesElement = true
                break
            }
        }
        if (addAvoidsNodesElement) {
            val avoidsNodesElement = Element("AvoidsNodes")
            avoidsNodesElement.setText("false")
            element.addContent(avoidsNodesElement)
        }
    }

    private fun reorganizeConnections(ecoElement: Element) {

        fun switchAround(parentElement: Element, nameOver: String, nameUnder: String) {

            // Place <elementOver> after <elementUnder>.
            val elementOver = parentElement.getChild(nameOver)
            val elementUnder = parentElement.getChild(nameUnder)
            if (elementOver == null || elementUnder == null) return

            parentElement.removeChild(nameOver)
            val elementUnderIndex = parentElement.indexOf(elementUnder)
            parentElement.addContent(elementUnderIndex+1, elementOver)
        }

        switchAround(ecoElement.getChild("InterfaceList"), "Plugs", "Sockets")
        switchAround(ecoElement.getChild("FBNetwork"), "DataConnections", "EventConnections")
    }
}