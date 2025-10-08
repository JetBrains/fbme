package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.NamespaceFinder
import org.fbme.lib.iec61499.fbnetwork.*
import org.jdom.Element

open class FBNetworkPrinter<NetworkT : FBNetwork> @JvmOverloads constructor(
    network: NetworkT,
    tag: String = "FBNetwork"
) : PrinterElementBase<NetworkT>(network, tag) {
    override fun printElementBody(element: Element) {
        printFunctionBlocks(element)
        addNullableContent(element, printDataConnections())
        addNullableContent(element, printEventConnections())
        addNullableContent(element, printAdapterConnections())
        printEndpointCoordinates(element)
    }

    fun printEndpointCoordinates(element: Element) {
        for (endpointCoordinate in this.element.endpointCoordinates) {
            element.addContent(printEndpointCoordinate(endpointCoordinate))
        }
    }

    open fun printFunctionBlocks(element: Element) {
        for (fb in this.element.functionBlocks) {
            val fbElement = FunctionBlockPrinter(fb).print()
            element.addContent(fbElement)
        }
    }

    fun printDataConnections(): Element? {
        val dataConnections = element.dataConnections
        if (dataConnections.isEmpty()) {
            return null
        }
        val element = Element("DataConnections")
        for (connection in dataConnections) {
            element.addContent(printConnection(connection))
        }
        return element
    }

    open fun printEventConnections(): Element? {
        val eventConnections = element.eventConnections
        if (eventConnections.isEmpty()) {
            return null
        }
        val element = Element("EventConnections")
        for (connection in eventConnections) {
            element.addContent(printConnection(connection))
        }
        return element
    }

    fun printAdapterConnections(): Element? {
        val adapterConnections = element.adapterConnections
        if (adapterConnections.isEmpty()) {
            return null
        }
        val element = Element("AdapterConnections")
        for (connection in adapterConnections) {
            element.addContent(printConnection(connection))
        }
        return element
    }

    class FunctionBlockPrinter(fb: FunctionBlockDeclaration) :
        DeclarationPrinterBase<FunctionBlockDeclaration>(fb, "FB") {
        override fun printDeclarationBody(element: Element) {
            if (this.element.id != null) {
                val name = element.getAttributeValue("Name")
                element.removeAttribute("Name")
                element.setAttribute("ID", this.element.id)
                element.setAttribute("Name", name)
            }
            val type = this.element.typeReference.presentation
            element.setAttribute("Type", type)
            element.setAttribute("x", "" + this.element.x)
            element.setAttribute("y", "" + this.element.y)
            val namespace = if (this.element.namespace != null) {
                this.element.namespace
            } else {
                NamespaceFinder.getNamespace(type)
            }
            element.setAttribute("Namespace", namespace)
            AttributeDeclarationPrinter.printAll(this.element.attributes, element)
            ParameterAssignmentPrinter.printAll(this.element.parameters, element)
        }
    }

    private fun printEndpointCoordinate(endpointCoordinate: EndpointCoordinate): Element {
        val element = Element("EndpointCoordinate")
        element.setAttribute("Name", endpointCoordinate.portReference.presentation)
        element.setAttribute("x", "" + endpointCoordinate.x)
        element.setAttribute("y", "" + endpointCoordinate.y)
        return element
    }

    private fun printConnection(connection: FBNetworkConnection): Element {
        val element = Element("Connection")
        element.setAttribute("Source", connection.sourceReference.presentation)
        element.setAttribute("Destination", connection.targetReference.presentation)
        val path = connection.path ?: return element
        when (path.kind) {
            ConnectionPath.Kind.MoreThanFour -> {
                val longPath = path as LongConnectionPath
                val bendPointsElement = Element("BendPoints")
                val bendPoints = longPath.bendPoints
                for (bendPoint in bendPoints) {
                    val bendPointElement = Element("BendPoint")
                    bendPointElement.setAttribute("x", "" + bendPoint.x)
                    bendPointElement.setAttribute("y", "" + bendPoint.y)
                    bendPointsElement.addContent(bendPointElement)
                }
                element.addContent(bendPointsElement)
                element.setAttribute("dy", "" + path.dY)
                element.setAttribute("dx2", "" + path.dX2)
                element.setAttribute("dx1", "" + path.dX1)
            }

            ConnectionPath.Kind.FourAngles -> {
                element.setAttribute("dy", "" + path.dY)
                element.setAttribute("dx2", "" + path.dX2)
                element.setAttribute("dx1", "" + path.dX1)
            }

            ConnectionPath.Kind.TwoAngles -> element.setAttribute("dx1", "" + path.dX1)

            ConnectionPath.Kind.Straight -> {
                // no-op
            }
        }
        return element
    }
}
