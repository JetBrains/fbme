package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.fbnetwork.*
import org.jdom.DataConversionException
import org.jdom.Element
import java.awt.Point

open class FBNetworkConverter(arguments: ConverterArguments, private val myNetwork: FBNetwork?) :
    ConverterBase(arguments) {
    open fun extractNetwork() {
        checkNotNull(myNetwork)
        extractFunctionBlocks(myNetwork.functionBlocks)
        extractEventConnections(myNetwork.eventConnections)
        extractDataConnections(myNetwork.dataConnections)
        extractAdapterConnections(myNetwork.adapterConnections)
        extractEndpointCoordinates(myNetwork.endpointCoordinates)
    }

    protected open fun extractEndpointCoordinates(endpointCoordinates: MutableList<EndpointCoordinate>) {
        val elementNotNull = element ?: return
        val elements = elementNotNull.getChildren("EndpointCoordinate")
        for (element in elements) {
            val endpointCoordinate = convertEndpointCoordinate(element)
            endpointCoordinates.add(endpointCoordinate)
        }
    }

    private fun convertEndpointCoordinate(element: Element): EndpointCoordinate {
        val name = element.getAttributeValue("Name")
        val x = element.getAttributeValue("x").toFloat().toInt()
        val y = element.getAttributeValue("y").toFloat().toInt()
        val endpointCoordinate = factory.createEndpointCoordinate()
        endpointCoordinate.portReference.setFQName(name)
        endpointCoordinate.x = x
        endpointCoordinate.y = y
        return endpointCoordinate
    }

    private fun extractFunctionBlocks(functionBlocks: MutableList<FunctionBlockDeclaration>) {
        val elementNotNull = element ?: return
        val fbElements = elementNotNull.getChildren("FB")
        for (fbElement in fbElements) {
            functionBlocks.add(FunctionBlockConverter(with(fbElement)).extract())
        }
    }

    private fun extractDataConnections(dataConnections: MutableList<FBNetworkConnection>) {
        val elementNotNull = element ?: return
        val dataConnectionsElement = elementNotNull.getChild("DataConnections") ?: return
        val dataConnectionElements = dataConnectionsElement.getChildren("Connection")
        for (dataConnectionElement in dataConnectionElements) {
            dataConnections.add(convertDataConnection(dataConnectionElement))
        }
    }

    private fun extractEventConnections(eventConnections: MutableList<FBNetworkConnection>) {
        val elementNotNull = element ?: return
        val eventConnectionsElement = elementNotNull.getChild("EventConnections") ?: return
        val eventConnectionElements = eventConnectionsElement.getChildren("Connection")
        for (evenConnectionElement in eventConnectionElements) {
            eventConnections.add(convertEventConnection(evenConnectionElement))
        }
    }

    private fun extractAdapterConnections(adapterConnections: MutableList<FBNetworkConnection>) {
        val elementNotNull = element ?: return
        val adapterConnectionsElement = elementNotNull.getChild("AdapterConnections") ?: return
        val eventConnectionElements = adapterConnectionsElement.getChildren("Connection")
        for (evenConnectionElement in eventConnectionElements) {
            adapterConnections.add(convertAdapterConnection(evenConnectionElement))
        }
    }

    private inner class FunctionBlockConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<FunctionBlockDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): FunctionBlockDeclaration {
            checkNotNull(element)
            val fbd = factory.createFunctionBlockDeclaration(identifier)
            fbd.typeReference.setTargetName(element.getAttributeValue("Type"))
            fbd.x = element.getAttributeValue("x").toFloat().toInt()
            fbd.y = element.getAttributeValue("y").toFloat().toInt()
            ParameterAssignmentsConverter(this, fbd.parameters).extractParameters()
            return fbd
        }
    }

    private fun convertDataConnection(dataConnectionElement: Element): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(EntryKind.DATA)
        connection.sourceReference.setFQName(dataConnectionElement.getAttributeValue("Source"))
        connection.targetReference.setFQName(dataConnectionElement.getAttributeValue("Destination"))
        connection.path = extractConnectionPath(dataConnectionElement)
        return connection
    }

    private fun convertEventConnection(eventConnectionElement: Element): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(EntryKind.EVENT)
        connection.sourceReference.setFQName(eventConnectionElement.getAttributeValue("Source"))
        connection.targetReference.setFQName(eventConnectionElement.getAttributeValue("Destination"))
        connection.path = extractConnectionPath(eventConnectionElement)
        return connection
    }

    private fun convertAdapterConnection(adapterConnectionElement: Element): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(EntryKind.ADAPTER)
        connection.sourceReference.setFQName(adapterConnectionElement.getAttributeValue("Source"))
        connection.targetReference.setFQName(adapterConnectionElement.getAttributeValue("Destination"))
        connection.path = extractConnectionPath(adapterConnectionElement)
        return connection
    }

    protected open fun extractConnectionPath(connectionElement: Element): ConnectionPath {
        val dx1Attriubte = connectionElement.getAttribute("dx1")
        val dyAttriubte = connectionElement.getAttribute("dy")
        val dx2Attriubte = connectionElement.getAttribute("dx2")
        return try {
            var kind = ConnectionPath.Kind.Straight
            var dx1 = 0
            var dy = 0
            var dx2 = 0
            if (dx1Attriubte != null && dyAttriubte != null && dx2Attriubte != null) {
                kind = ConnectionPath.Kind.FourAngles
                dx1 = dx1Attriubte.floatValue.toInt()
                dy = dyAttriubte.floatValue.toInt()
                dx2 = dx2Attriubte.floatValue.toInt()
            } else if (dx1Attriubte != null) {
                kind = ConnectionPath.Kind.TwoAngles
                dx1 = dx1Attriubte.floatValue.toInt()
            }
            val bendPointsElement = connectionElement.getChild("BendPoints")
            if (bendPointsElement != null) {
                val bendPointsElementChildren = bendPointsElement.getChildren("BendPoint")
                try {
                    val bendPoints: MutableList<Point> = ArrayList()
                    for (bendPointElement in bendPointsElementChildren) {
                        val x = bendPointElement.getAttributeValue("x").toFloat().toInt()
                        val y = bendPointElement.getAttributeValue("y").toFloat().toInt()
                        val bendPoint = Point(x, y)
                        bendPoints.add(bendPoint)
                    }
                    return LongConnectionPath(dx1, dy, dx2, bendPoints)
                } catch (e: NumberFormatException) {
                    // ignore
                }
            }
            ConnectionPath(kind, dx1, dy, dx2)
        } catch (e: DataConversionException) {
            ConnectionPath()
        }
    }
}
