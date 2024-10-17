package org.fbme.integration.nxt.exporter

import org.fbme.integration.nxt.unescapeXML
import org.jdom.CDATA
import org.jdom.Element


class BasicFBTypeDeclarationEcoConverter(fbmeElement: Element) {

    private val rootElement = fbmeElement

    fun convert() : Element {

        val ecoElement = rootElement.clone()

        addAttributeElement(ecoElement)
        //addBezierPoints(ecoElement)
        rewriteAlgorithmContents(ecoElement)

        return ecoElement
    }

    private fun addAttributeElement(ecoElement: Element) {
        val basicFBElement = ecoElement.getChild("BasicFB") ?: return
        val attributeElement = Element("Attribute")
        attributeElement.setAttribute("Name", "FBType.Basic.Algorithm.Order")
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

        fun findElementByName(elements: List<Element>, childName: String) : Element {
            for (element in elements) {
                if (element.getAttributeValue("Name") == childName) {
                    return element
                }
            }
            return elements[0] // Just to avoid returning nulls.
        }

        val basicFBElement = ecoElement.getChild("BasicFB") ?: return
        val eccElement = basicFBElement.getChild("ECC") ?: return
        val ecStateElements = eccElement.getChildren("ECState") ?: return
        val ecTransitionElements = eccElement.getChildren("ECTransition") ?: return
        ecTransitionElements.forEach { ecTransitionElement ->
            val attributeElement = Element("Attribute")
            attributeElement.setAttribute("Name", "Configuration.Transaction.BezierPoints")
            val transitionX = ecTransitionElement.getAttributeValue("x").toFloat()
            val transitionY = ecTransitionElement.getAttributeValue("y").toFloat()
            //val bezierPointX = transitionX / 5 // TODO, approximate these in more detail.
            //val bezierPointY = transitionY / 5
            val sourceStateName = ecTransitionElement.getAttributeValue("Source")
            val sourceStateElement = findElementByName(ecStateElements, sourceStateName)
            val sourceX = sourceStateElement.getAttributeValue("x").toFloat()
            val sourceY = sourceStateElement.getAttributeValue("y").toFloat()

            val destinationStateName = ecTransitionElement.getAttributeValue("Destination")
            val destinationStateElement = findElementByName(ecStateElements, destinationStateName)
            val destinationX = destinationStateElement.getAttributeValue("x").toFloat()
            val destinationY = destinationStateElement.getAttributeValue("y").toFloat()

            // Calculate the directional vector from source to destination
            val dx = destinationX - sourceX
            val dy = destinationY - sourceY

            // Perpendicular vector to (dx, dy) is (-dy, dx)
            // This gives a vector orthogonal to the line connecting the source and destination
            val perpX = -dy
            val perpY = dx

            // Normalize the perpendicular vector
            val length = Math.sqrt((perpX * perpX + perpY * perpY).toDouble())
            val unitPerpX = (perpX / length).toFloat()
            val unitPerpY = (perpY / length).toFloat()

            // Use an offset to adjust the curvature. Adjust this based on your grid scale.
            val curveOffset = 20.0f

            // Calculate control points along the perpendicular vector
            var bezierPointX = (sourceX + destinationX) * 0.5f  * 0.3f + unitPerpX * curveOffset
            var bezierPointY = (sourceY + destinationY) * 0.5f  * 0.3f + unitPerpY * curveOffset

            //bezierPointX = transitionX
            //bezierPointY = transitionY

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