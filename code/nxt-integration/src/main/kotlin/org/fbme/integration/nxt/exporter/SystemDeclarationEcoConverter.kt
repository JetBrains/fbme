package org.fbme.integration.nxt.exporter

import com.intellij.psi.impl.source.tree.java.ParameterElement
import org.jdom.Document
import org.jdom.Element


class SystemDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {
        val ecoElement = rootElement.clone()
        switchApplicationNetworkDataConnectionsPosition(ecoElement)
        switchResourceNetworkDataConnectionsPosition(ecoElement)
        fixResourceEventConnections(ecoElement)
        fixInconsistencies(ecoElement)
        return ecoElement
    }

    private fun switchApplicationNetworkDataConnectionsPosition(ecoElement: Element) {
        val applicationElements = ecoElement.getChildren("Application")
        for (applicationElement in applicationElements) {
            val subAppNetworkElement = applicationElement.getChild("SubAppNetwork") ?: continue
            // Place DataConnections after EventConnections to follow Ecostruxure style.
            val dataConnectionsElement = subAppNetworkElement.getChild("DataConnections") ?: continue
            val eventConnectionsElement = subAppNetworkElement.getChild("EventConnections") ?: continue
            subAppNetworkElement.removeChild("DataConnections")
            subAppNetworkElement.addContent(subAppNetworkElement.indexOf(eventConnectionsElement)+1,
                dataConnectionsElement)
        }
    }

    private fun switchResourceNetworkDataConnectionsPosition(ecoElement: Element) {
        val deviceElements = ecoElement.getChildren("Device")
        for (deviceElement in deviceElements) {
            val resourceElements = deviceElement.getChildren("Resource")
            for (resourceElement in resourceElements) {
                val fbNetworkElement = resourceElement.getChild("FBNetwork") ?: continue
                // Place DataConnections after EventConnections to follow Ecostruxure style.
                val dataConnectionsElement = fbNetworkElement.getChild("DataConnections") ?: continue
                val eventConnectionsElement = fbNetworkElement.getChild("EventConnections") ?: continue
                fbNetworkElement.removeChild("DataConnections")
                fbNetworkElement.addContent(fbNetworkElement.indexOf(eventConnectionsElement)+1,
                    dataConnectionsElement)
            }
        }
    }

    private fun fixResourceEventConnections(ecoElement: Element) {
        val connectionSourceFix1 = "START.COLD"
        val connectionSourceFix2 = "START.WARM"
        val deviceElements = ecoElement.getChildren("Device")
        for (deviceElement in deviceElements) {
            val resourceElements = deviceElement.getChildren("Resource")
            for (resourceElement in resourceElements) {
                val type = resourceElement.getAttributeValue("Type")
                if (type != "EMB_RES_ECO") {
                    // Support only available for EMB_RES_ECO type resources atm.
                    TODO("Check how FBME handles $type resource types.")
                }
                val fbNetworkElement = resourceElement.getChild("FBNetwork") ?: continue
                val eventConnectionsElement = fbNetworkElement.getChild("EventConnections") ?: continue
                var connectionSourceFix : String? = connectionSourceFix1
                for (eventConnectionElement in eventConnectionsElement.children) {
                    val source = eventConnectionElement.getAttributeValue("Source")
                    if (!source.startsWith("null.")) continue

                    // Event connection source is probably "null.null". This happens
                    // due to FBME not recognizing resource type EMB_RES_ECO.
                    if (connectionSourceFix == null) {
                        error("Unexpected problem encountered while attempting to fix resource event connections in system file!")
                    }
                    eventConnectionElement.setAttribute("Source", connectionSourceFix)

                    if (connectionSourceFix == connectionSourceFix1) {
                        connectionSourceFix = connectionSourceFix2
                    } else if (connectionSourceFix == connectionSourceFix2) {
                        connectionSourceFix = null
                    }
                }
            }
        }
    }

    private fun fixInconsistencies(ecoElement: Element) {
        // Changes in applications won't show up in resources.
        // Exporting an inconsistent file will crash Ecostruxure.

        fun isDeployFile(rootElement: Element): Boolean {
            // There are two System.sys files in the FBME root directory,
            // one in bin/Deploy/System/ and another in System/.
            val applicationElements = rootElement.getChildren("Application")
            return applicationElements.isEmpty() // Deploy file has no Applications.
        }

        if (isDeployFile(ecoElement)) return

        val applicationElements = ecoElement.getChildren("Application")

        val deviceElements = ecoElement.getChildren("Device")
        for (deviceElement in deviceElements) {
            val resourceElements = deviceElement.getChildren("Resource")
            for (resourceElement in resourceElements) {
                val fbNetworkElement = resourceElement.getChild("FBNetwork") ?: continue

                // Check interface constants.
                val resourceFBElements = fbNetworkElement.getChildren("FB")
                for (resourceFBElement in resourceFBElements) {
                    for (applicationElement in applicationElements) {
                        val subAppNetworkElement = applicationElement.getChild("SubAppNetwork") ?: continue
                        val applicationFBElements = subAppNetworkElement.getChildren("FB")
                        for (applicationFBElement in applicationFBElements) {
                            // Find the matching resourceFBElement, applicationFBElement pair.
                            // TODO("Not sure if this comparison is 100% reliable:")
                            val nameA = applicationFBElement.getAttributeValue("Name")
                            val nameR = resourceFBElement.getAttributeValue("Name")
                            val typeA = applicationFBElement.getAttributeValue("Type")
                            val typeR = resourceFBElement.getAttributeValue("Type")
                            if (nameA != nameR || typeA != typeR) continue
                            // Matching resourceFBElement, applicationFBElement pair found.
                            val applicationParameterElements = applicationFBElement.getChildren("Parameter")
                            if (applicationParameterElements.isEmpty()) continue
                            val resourceParameterElements = resourceFBElement.getChildren("Parameter")
                            // The FB element in Application and in Resource should have constant input(s), let's check they match.
                            // Any FB element could have multiple constant inputs.
                            for (applicationParameterElement in applicationParameterElements) {
                                for (resourceParameterElement in resourceParameterElements) {
                                    val parameterNameA = applicationParameterElement.getAttributeValue("Name")
                                    val parameterNameR = resourceParameterElement.getAttributeValue("Name")
                                    if (parameterNameA != parameterNameR) continue
                                    val valueA = applicationParameterElement.getAttributeValue("Value")
                                    val valueR = resourceParameterElement.getAttributeValue("Value")
                                    if (valueA == valueR) continue
                                    // Found a mismatch, set "resourceParameterElement" correct.
                                    resourceParameterElement.setAttribute("Value", valueA)
                                }
                            }
                        }
                    }
                }
                continue
                TODO("Check the connections.")
                val eventConnectionsElement = fbNetworkElement.getChild("EventConnections") ?: continue
                for (eventConnectionElement in eventConnectionsElement.children) {
                    val source = eventConnectionElement.getAttributeValue("Source")

                }
                val dataConnectionsElement = fbNetworkElement.getChild("DataConnections") ?: continue
                for (dataConnectionElement in dataConnectionsElement.children) {
                    val source = dataConnectionElement.getAttributeValue("Source")
                }
            }
        }
    }
}
