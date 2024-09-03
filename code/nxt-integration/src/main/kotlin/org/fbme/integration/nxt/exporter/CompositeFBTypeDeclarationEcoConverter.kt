package org.fbme.integration.nxt.exporter

import org.jdom.Element

class CompositeFBTypeDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {

        val ecoElement = rootElement.clone()

        // Add namespace attribute to root.
        ecoElement.setAttribute("Namespace", "Main")

        val fbNetwork = ecoElement.getChild("FBNetwork") ?: return ecoElement
        val fbElementList = fbNetwork.getChildren("FB") ?: return ecoElement
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

        val eventConnections = fbNetwork.getChild("EventConnections") ?: return ecoElement
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

        // TODO: Remove EndpointCoordinate elements if they are unnecessary.

        return ecoElement
    }

    fun unusedFunction(element: Element) {
        // Add the correct namespace for each FB element in FBNetwork
        val fbElement = Element("Idk")
        if (true) { // Is this a specific FB to out project or not? Otherwise read from the configuration files.
            fbElement.setAttribute("Namespace", "Main")
        }
        element.addContent(fbElement)
    }

}