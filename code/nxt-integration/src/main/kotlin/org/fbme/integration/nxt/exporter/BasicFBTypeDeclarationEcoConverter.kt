package org.fbme.integration.nxt.exporter

import org.jdom.Element

class BasicFBTypeDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {

        val ecoElement = rootElement.clone()

        // Add namespace attribute to root.
        ecoElement.setAttribute("Namespace", "Main")

        return ecoElement
    }
}