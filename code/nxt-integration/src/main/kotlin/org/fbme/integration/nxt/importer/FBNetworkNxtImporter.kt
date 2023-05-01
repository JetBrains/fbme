package org.fbme.integration.nxt.importer

import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.lib.iec61499.fbnetwork.EndpointCoordinate
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.LongConnectionPath
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.FBNetworkConverter
import org.jdom.DataConversionException
import org.jdom.Element
import java.awt.Point

class FBNetworkNxtImporter(arguments: ConverterArguments, network: FBNetwork) :
    FBNetworkConverter(arguments, network) {

    override fun extractEndpointCoordinates(endpointCoordinates: MutableList<EndpointCoordinate>) {
        val element = element ?: return
        val externalInputs = element.getChildren("Input")
        val externalOutputs = element.getChildren("Output")
        if (externalInputs.size == 0 && externalOutputs.size == 0) {
            super.extractEndpointCoordinates(endpointCoordinates)
            return
        }
        for (externalInput in externalInputs) {
            endpointCoordinates.add(convertEndpointCoordinate(externalInput))
        }
        for (externalOutput in externalOutputs) {
            endpointCoordinates.add(convertEndpointCoordinate(externalOutput))
        }
    }

    override fun extractConnectionPath(connectionElement: Element): ConnectionPath {
        val dx1Attribute = connectionElement.getAttribute("dx1")
        val dyAttribute = connectionElement.getAttribute("dy")
        val dx2Attribute = connectionElement.getAttribute("dx2")
        var kind = ConnectionPath.Kind.Straight
        var dx1 = 0
        var dy = 0
        var dx2 = 0
        return try {
            if (dx1Attribute != null && dyAttribute != null && dx2Attribute != null) {
                kind = ConnectionPath.Kind.FourAngles
                dx1 = dx1Attribute.floatValue.toInt()
                dy = dyAttribute.floatValue.toInt()
                dx2 = dx2Attribute.floatValue.toInt()
            } else if (dx1Attribute != null) {
                kind = ConnectionPath.Kind.TwoAngles
                dx1 = dx1Attribute.floatValue.toInt()
            }
            val pointList = getPointList(connectionElement)
            pointList?.let { LongConnectionPath(dx1, dy, dx2, it) } ?: ConnectionPath(kind, dx1, dy, dx2)
        } catch (e: DataConversionException) {
            ConnectionPath()
        }
    }

    private fun convertEndpointCoordinate(element: Element): EndpointCoordinate {
        val name = element.getAttributeValue("Name")
        val endpointCoordinate = factory.createEndpointCoordinate()
        endpointCoordinate.portReference.setFQName(name)
        val x: String?
        val y: String?
        val position = element.getChild("Position")
        var upscaleCoef = 1.0
        if (position != null) {
            x = position.getChild("X").value
            y = position.getChild("Y").value
            upscaleCoef = 4.0
        } else {
            x = element.getAttributeValue("x")
            y = element.getAttributeValue("y")
        }
        endpointCoordinate.x = if (x != null) (x.toDouble() * upscaleCoef).toInt() else 0
        endpointCoordinate.y = if (y != null) (y.toDouble() * upscaleCoef).toInt() else 0
        return endpointCoordinate
    }

    private fun getPointList(connectionElement: Element): List<Point>? {
        val upscaleCoef = 4.0
        var pointElement = connectionElement.getChild("Points")
        if (pointElement != null) {
            val pointElements = pointElement.getChildren("Points")
            val pointList = pointElements.map { e: Element ->
                    Point(
                        (e.getChild("X").value.toDouble() * upscaleCoef).toInt(),
                        (e.getChild("Y").value.toDouble() * upscaleCoef).toInt()
                    )
                }
            return pointList.subList(1, pointList.size - 1)
        }
        pointElement = connectionElement.getChild("BendPoints")
        if (pointElement != null) {
            val pointElements = pointElement.getChildren("BendPoint")
            return pointElements.map { e: Element ->
                    Point(
                        e.getAttributeValue("x").toDouble().toInt(),
                        e.getAttributeValue("y").toDouble().toInt()
                    )
                }
        }
        return null
    }
}