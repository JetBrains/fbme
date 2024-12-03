package org.fbme.integration.nxt.exporter

import org.jdom.Element


class SystemDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {
        val ecoElement = rootElement.clone()
        // TODO("Move eventconnections ahead of dataconnections in application and device networks.")
        fixResourceEventConnections(ecoElement)
        return ecoElement
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
}
