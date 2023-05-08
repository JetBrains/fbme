package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork
import org.fbme.scenes.controllers.diagram.DiagramView
import org.fbme.scenes.viewmodel.ComponentExtensionsView
import org.fbme.scenes.viewmodel.ComponentsView
import kotlin.math.max

class NetworkView(private val myFactory: IEC61499Factory, private val myNetwork: FBNetwork, val isEditable: Boolean) {
    private val myMainComponents: MutableSet<NetworkComponentView> = HashSet()
    private val myAuxComponents: MutableMap<NetworkComponentView, Set<NetworkComponentView>> = HashMap()
    private val myComponentToPorts: MutableMap<NetworkComponentView, Set<NetworkPortView>> = HashMap()
    private val myPorts: MutableMap<NetworkPortView, NetworkComponentView> = HashMap()
    private val myConnectionSources: MutableMap<NetworkConnectionView, NetworkPortView?> = HashMap()
    private val myConnectionDestinations: MutableMap<NetworkConnectionView, NetworkPortView?> = HashMap()
    private val myElementModelMap: MutableMap<Element?, NetworkComponentView> = HashMap()
    private val myPortModelMap: MutableMap<PortPath<*>?, NetworkPortView> = HashMap()
    private val myConnectionModelMap: MutableMap<FBNetworkConnection?, NetworkConnectionView> = HashMap()

    private fun init() {
        initSubapps()
        initFBs(myNetwork, isEditable)
        val prototype = myNetwork.prototype
        if (prototype != null) {
            initFBs(prototype, false)
        }
        initConnections(myNetwork, isEditable)
        if (prototype != null) {
            initConnections(prototype, false)
        }
    }

    private fun initSubapps() {
        if (myNetwork is SubappNetwork) {
            for (subapp in myNetwork.subapplications) {
                addFunctionBlock(subapp, isEditable)
            }
        }
    }

    private fun initFBs(network: FBNetwork, editable: Boolean) {
        for (functionBlock in network.functionBlocks) {
            addFunctionBlock(functionBlock, editable)
        }
        for (component in network.contextComponents) {
            addFunctionBlock(component, editable)
        }
        val contextEventSources = network.contextEventSources
        val endpointCoordinates = network.endpointCoordinates
        val endpointCoordinateMap: MutableMap<String, EndpointCoordinate> = HashMap()
        for (endpointCoordinate in endpointCoordinates) {
            val portName = endpointCoordinate.portReference.presentation
            endpointCoordinateMap[portName] = endpointCoordinate
        }
        for (i in contextEventSources.indices) {
            val eventDeclaration = contextEventSources[i]
            val endpointCoordinate =
                endpointCoordinateMap.getOrDefault(eventDeclaration.name, createDefaultEndpointCoordinate(i, true))
            addInterfaceEndpoint(network, endpointCoordinate, i, EntryKind.EVENT, true, eventDeclaration)
        }
        val contextEventDestinations = network.contextEventDestinations
        for (i in contextEventDestinations.indices) {
            val eventDeclaration = contextEventDestinations[i]
            val endpointCoordinate =
                endpointCoordinateMap.getOrDefault(eventDeclaration.name, createDefaultEndpointCoordinate(i, false))
            addInterfaceEndpoint(network, endpointCoordinate, i, EntryKind.EVENT, false, eventDeclaration)
        }
        val events = max(contextEventSources.size, contextEventDestinations.size)
        val contextDataSources = network.contextDataSources
        for (i in contextDataSources.indices) {
            val parameterDeclaration = contextDataSources[i]
            val endpointCoordinate = endpointCoordinateMap.getOrDefault(
                parameterDeclaration.name,
                createDefaultEndpointCoordinate(events + i + 2, true)
            )
            addInterfaceEndpoint(
                network,
                endpointCoordinate,
                events + i + 2,
                EntryKind.DATA,
                true,
                parameterDeclaration
            )
        }
        val contextDataDestinations = network.contextDataDestinations
        for (i in contextDataDestinations.indices) {
            val parameterDeclaration = contextDataDestinations[i]
            val endpointCoordinate = endpointCoordinateMap.getOrDefault(
                parameterDeclaration.name,
                createDefaultEndpointCoordinate(events + i + 2, false)
            )
            addInterfaceEndpoint(
                network,
                endpointCoordinate,
                events + i + 2,
                EntryKind.DATA,
                false,
                parameterDeclaration
            )
        }
    }

    private fun createDefaultEndpointCoordinate(position: Int, isSource: Boolean): EndpointCoordinate {
        val endpointCoordinate = myFactory.createEndpointCoordinate()
        endpointCoordinate.x = if (isSource) 0 else 5000
        endpointCoordinate.y = position * 50
        return endpointCoordinate
    }

    private fun initConnections(network: FBNetwork, editable: Boolean) {
        for (connection in network.eventConnections) {
            addConnection(connection, editable)
        }
        for (connection in network.dataConnections) {
            addConnection(connection, editable)
        }
        for (connection in network.adapterConnections) {
            addConnection(connection, editable)
        }
    }

    private fun addInterfaceEndpoint(
        network: FBNetwork,
        endpointCoordinate: EndpointCoordinate,
        position: Int,
        kind: EntryKind,
        source: Boolean,
        declaration: Declaration
    ) {
        val view = InterfaceEndpointView(network, endpointCoordinate, position, kind, source, declaration)
        myElementModelMap[declaration] = view
        myMainComponents.add(view)
        myPorts[view] = view
        myPortModelMap[PortPath.createPortPath(null, kind, declaration)] = view
        myComponentToPorts[view] = setOf<NetworkPortView>(view)
    }

    private fun addFunctionBlock(functionBlock: FunctionBlockDeclarationBase, editable: Boolean) {
        val view = FunctionBlockView(functionBlock, editable)
        myElementModelMap[functionBlock] = view
        myMainComponents.add(view)
        val type = functionBlock.type
        val exts = HashSet<NetworkComponentView>()
        myAuxComponents[view] = exts
        for (parameter in functionBlock.parameters) {
            val parameterDeclaration = parameter.parameterReference.getTarget()
                ?: // TODO handle broken parameters
                continue
            val declaration = parameterDeclaration.container as FBInterfaceDeclaration?
            val index = declaration!!.inputParameters.indexOf(parameterDeclaration)
            val oppositePortView = FunctionBlockPortView(view, index, EntryKind.DATA, false, parameterDeclaration)
            val inlineValueView = InlineValueView(oppositePortView, parameter.value!!)
            myElementModelMap[parameter] = inlineValueView
            myComponentToPorts[inlineValueView] = setOf<NetworkPortView>(inlineValueView)
            myPorts[inlineValueView] = inlineValueView
            exts.add(inlineValueView)
            val parameterConnectionView = NetworkConnectionView(parameter, true)
            myConnectionSources[parameterConnectionView] = inlineValueView
            myConnectionDestinations[parameterConnectionView] = oppositePortView
        }
        val ports = HashSet<NetworkPortView>()
        var i = 0
        myComponentToPorts[view] = ports
        for (dataInput in type.dataInputPorts) {
            val port = FunctionBlockPortView(view, i++, EntryKind.DATA, false, dataInput.declaration!!)
            ports.add(port)
            myPortModelMap[PortPath.createPortPath(functionBlock, EntryKind.DATA, dataInput.declaration!!)] = port
            myPorts[port] = view
        }
        i = 0
        for (dataOutput in type.dataOutputPorts) {
            val port = FunctionBlockPortView(view, i++, EntryKind.DATA, true, dataOutput.declaration!!)
            ports.add(port)
            myPortModelMap[PortPath.createPortPath(functionBlock, EntryKind.DATA, dataOutput.declaration!!)] = port
            myPorts[port] = view
        }
        i = 0
        for (dataInput in type.eventInputPorts) {
            val port = FunctionBlockPortView(view, i++, EntryKind.EVENT, false, dataInput.declaration!!)
            ports.add(port)
            myPortModelMap[PortPath.createPortPath(functionBlock, EntryKind.EVENT, dataInput.declaration!!)] = port
            myPorts[port] = view
        }
        i = 0
        for (dataOutput in type.eventOutputPorts) {
            val port = FunctionBlockPortView(view, i++, EntryKind.EVENT, true, dataOutput.declaration!!)
            ports.add(port)
            myPortModelMap[PortPath.createPortPath(functionBlock, EntryKind.EVENT, dataOutput.declaration!!)] = port
            myPorts[port] = view
        }
        i = 0
        for (socket in type.socketPorts) {
            val port = FunctionBlockPortView(view, i++, EntryKind.ADAPTER, false, socket.declaration!!)
            ports.add(port)
            myPortModelMap[PortPath.createPortPath(functionBlock, EntryKind.ADAPTER, socket.declaration!!)] = port
            myPorts[port] = view
        }
        i = 0
        for (plug in type.plugPorts) {
            val port = FunctionBlockPortView(view, i++, EntryKind.ADAPTER, true, plug.declaration!!)
            ports.add(port)
            myPortModelMap[PortPath.createPortPath(functionBlock, EntryKind.ADAPTER, plug.declaration!!)] = port
            myPorts[port] = view
        }
    }

    fun addConnection(connection: FBNetworkConnection, editable: Boolean): NetworkConnectionView? {
        val view = NetworkConnectionView(connection, editable)
        myConnectionModelMap[connection] = view
        val source = connection.sourceReference.getTarget()
        val target = connection.targetReference.getTarget()
        val targetView: NetworkPortView?
        val sourceView: NetworkPortView? = if (source != null) {
            myPortModelMap[source]
        } else {
            view.shrink()
            BrokenPortView()
        }
        if (target != null) {
            targetView = myPortModelMap[target]
            if (sourceView is BrokenPortView) {
                sourceView.setOpposite(targetView)
            }
        } else {
            if (sourceView is BrokenPortView) {
                return null
            }
            view.shrink()
            val portView = BrokenPortView()
            portView.setOpposite(sourceView)
            targetView = portView
        }
        myConnectionSources[view] = sourceView
        myConnectionDestinations[view] = targetView
        return view
    }

    val diagramView: DiagramView<NetworkComponentView, NetworkPortView, NetworkConnectionView> =
        object : DiagramView<NetworkComponentView, NetworkPortView, NetworkConnectionView> {
            override fun components(): Set<NetworkComponentView> {
                return myComponentToPorts.keys
            }

            override fun edges(): Set<NetworkConnectionView> {
                return myConnectionSources.keys
            }

            override fun ports(component: NetworkComponentView): Set<NetworkPortView> {
                return myComponentToPorts[component]!!
            }

            override fun component(port: NetworkPortView): NetworkComponentView {
                return myPorts[port]!!
            }

            override fun sourcePort(edge: NetworkConnectionView): NetworkPortView {
                return myConnectionSources[edge]!!
            }

            override fun setSourcePort(edge: NetworkConnectionView, port: NetworkPortView) {
                val connection = edge.connection
                if (connection != null && edge.isEditable) {
                    val sourceReference = connection.sourceReference
                    sourceReference.setTarget(getPortPath(port) ?: error("Can't get port path"))
                }
            }

            override fun targetPort(edge: NetworkConnectionView): NetworkPortView {
                return myConnectionDestinations[edge]!!
            }

            override fun setTargetPort(edge: NetworkConnectionView, port: NetworkPortView) {
                val connection = edge.connection
                if (connection != null && edge.isEditable) {
                    val targetReference = connection.targetReference
                    targetReference.setTarget(getPortPath(port) ?: error("Can't get port path"))
                }
            }

            private fun getPortPath(port: NetworkPortView): PortPath<*>? {
                if (port is FunctionBlockPortView) {
                    val functionBlock = myPorts[port] as FunctionBlockView
                    return PortPath.createPortPath(functionBlock.component, port.kind, port.target)
                } else if (port is InterfaceEndpointView) {
                    return PortPath.createPortPath(null, port.kind, port.target)
                }
                return null
            }

            override fun removeEdge(edge: NetworkConnectionView) {
                val connection = edge.connection
                if (connection != null && edge.isEditable) {
                    connection.remove()
                }
            }

            override fun addEdge(sourcePort: NetworkPortView, targetPort: NetworkPortView): NetworkConnectionView? {
                val kind = sourcePort.kind
                if (this.isEditable && kind == targetPort.kind) {
                    val connection = myFactory.createFBNetworkConnection(kind)
                    connection.sourceReference.setTarget(getPortPath(sourcePort) ?: error("Can't get port path"))
                    connection.targetReference.setTarget(getPortPath(targetPort) ?: error("Can't get port path"))
                    when (kind) {
                        EntryKind.DATA -> myNetwork.dataConnections.add(connection)
                        EntryKind.EVENT -> myNetwork.eventConnections.add(connection)
                        EntryKind.ADAPTER -> myNetwork.adapterConnections.add(connection)
                    }
                    return addConnection(connection, true)
                }
                return null
            }

            override val isEditable: Boolean
                get() = this@NetworkView.isEditable
        }
    val componentsView: ComponentsView<NetworkComponentView> = object : ComponentsView<NetworkComponentView> {
        override val components: Set<NetworkComponentView>
            get() = myMainComponents

        override fun remove(entry: NetworkComponentView) {
            if (entry.isEditable) {
                (entry as FunctionBlockView).component.remove()
            }
        }
    }
    val extensionsView: ComponentExtensionsView<NetworkComponentView, NetworkComponentView> =
        object : ComponentExtensionsView<NetworkComponentView, NetworkComponentView> {
            override fun getExtensions(component: NetworkComponentView): Set<NetworkComponentView> {
                return myAuxComponents.getOrDefault(
                    component,
                    emptySet()
                )
            }
        }

    fun getComponentView(element: Element): NetworkComponentView {
        return myElementModelMap[element] ?: error("Element not found")
    }

    fun getConnectionView(connection: FBNetworkConnection): NetworkConnectionView {
        return myConnectionModelMap[connection] ?: error("Connection not found")
    }

    fun getPortView(path: PortPath<*>): NetworkPortView {
        return myPortModelMap[path] ?: error("Can't get port")
    }

    init {
        init()
    }
}
