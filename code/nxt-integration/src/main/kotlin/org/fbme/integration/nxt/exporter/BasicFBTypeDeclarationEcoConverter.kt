package org.fbme.integration.nxt.exporter

import org.fbme.integration.nxt.unescapeXML
import org.jdom.CDATA
import org.jdom.Element


class BasicFBTypeDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {

        val ecoElement = rootElement.clone()

        ecoElement.setAttribute("Namespace", "Main")
        addAttributeElement(ecoElement)
        addBezierPoints(ecoElement)
        rewriteAlgorithmContents(ecoElement)

        // TODO: Get auxiliary data and print it here (including GUID, version info, so on).

        return ecoElement
    }

    private fun addAttributeElement(ecoElement: Element) {
        val basicFBElement = ecoElement.getChild("BasicFB") ?: return
        val attributeElement = Element("Attribute")
        attributeElement.setAttribute("Order", "FBType.Basic.Algorithm.Order")
        val algorithmNamesBuilder = StringBuilder()
        val algorithmElements = basicFBElement.getChildren("Algorithm")
        for (algorithmElement in algorithmElements) {
            algorithmNamesBuilder.append(algorithmElement.getAttributeValue("Name"))
            algorithmNamesBuilder.append(",")
        }
        if (algorithmNamesBuilder.isNotEmpty()) {
            algorithmNamesBuilder.deleteCharAt(algorithmNamesBuilder.length - 1)
        }
        val algorithmNames = algorithmNamesBuilder.toString()
        attributeElement.setAttribute("Value", algorithmNames)
        val basicFBChildren = basicFBElement.children
        basicFBChildren.add(0, attributeElement)
    }

    private fun addBezierPoints(ecoElement: Element) {
        val basicFBElement = ecoElement.getChild("BasicFB") ?: return
        val eccElement = basicFBElement.getChild("ECC") ?: return
        val ecTransitionElements = eccElement.getChildren("ECTransition") ?: return
        ecTransitionElements.forEach { ecTransitionElement ->
            val attributeElement = Element("Attribute")
            attributeElement.setAttribute("Name", "Configuration.Transaction.BezierPoints")
            val transitionX = ecTransitionElement.getAttributeValue("x").toFloat()
            val transitionY = ecTransitionElement.getAttributeValue("y").toFloat()
            val bezierPointX = transitionX / 5 // TODO, approximate these in more detail.
            val bezierPointY = transitionY / 5
            val bezierPointsValues = "$bezierPointX,$bezierPointY,$bezierPointX,$bezierPointY"
            attributeElement.setAttribute("Value", bezierPointsValues)
            ecTransitionElement.addContent(attributeElement)
        }
    }

    private fun rewriteAlgorithmContents(ecoElement: Element) {
        // Converts all algorithm contents within the ST element, text attribute into CDATA format.
        val basicFBElement = ecoElement.getChild("BasicFB") ?: return
        val algorithmElements = basicFBElement.getChildren("Algorithm") ?: return
        for (algorithmElement in algorithmElements) {
            val stElement = algorithmElement.getChild("ST") ?: continue
            val algorithmData = stElement.getAttributeValue("Text").unescapeXML().replace("\n", "\r\n").replace("\r\r\n", "\r\n")
            stElement.removeAttribute("Text")
            stElement.setContent(CDATA(algorithmData))
        }
    }
}