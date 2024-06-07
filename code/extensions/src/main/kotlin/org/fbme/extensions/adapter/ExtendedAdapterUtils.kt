package org.fbme.extensions.adapter

import org.fbme.extensions.utils.FBInterfaceDeclarationUtils
import org.fbme.extensions.utils.IEC61499FactoryUtils
import org.fbme.extensions.utils.SModelUtils
import org.fbme.extensions.utils.STFactoryUtils
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.types.ElementaryType
import org.jetbrains.mps.openapi.model.SModel

class ExtendedAdapterUtils(
    private val factory: IEC61499Factory,
    stFactory: STFactory,
    owner: PlatformRepository,
    private val publishSubscribeProvider: ((name: String) -> FBTypeDeclaration)? = null,
) {
    private val sModelUtils: SModelUtils = SModelUtils(owner)
    private val fbInterfaceDeclarationUtils = FBInterfaceDeclarationUtils(factory)
    private val factoryUtils: IEC61499FactoryUtils = IEC61499FactoryUtils(factory)
    private val stFactoryUtils: STFactoryUtils = STFactoryUtils(stFactory)
    private val switchGenerator = AdapterSwitchGenerator(factory, owner, stFactory)
    private val numberToEventFbTypes: MutableMap<Int, BasicFBTypeDeclaration> = mutableMapOf()
    private val eventToNumberFbTypes: MutableMap<Int, BasicFBTypeDeclaration> = mutableMapOf()
    private fun getPackageName(name: String) = "generated/$name"

    companion object {

        fun isExtendedAdapterConnection(connection: FBNetworkConnection) =
            getSourceExtendedAdapterType(connection) != null &&
                    getTargetSocketAdapterDeclaration(connection) is ExtendedAdapterTypeDeclaration

        fun getSourceExtendedAdapterType(connection: FBNetworkConnection) =
            getSourcePlugAdapterDeclaration(connection) as? ExtendedAdapterTypeDeclaration

        fun getPlugExtendedAdapterType(declaration: Declaration?) =
            getPlugAdapterDeclaration(declaration) as? ExtendedAdapterTypeDeclaration

        fun getSourcePlugAdapterDeclaration(connection: FBNetworkConnection) =
            getPlugAdapterDeclaration(connection.sourceReference.getTarget()?.portTarget)

        fun getTargetSocketAdapterDeclaration(connection: FBNetworkConnection) =
            getSocketAdapterDeclaration(connection.targetReference.getTarget()?.portTarget)

        fun getSocketAdapterDeclaration(declaration: Declaration?) =
            (declaration as? SocketDeclaration)?.typeReference?.getTarget()

        fun getPlugAdapterDeclaration(declaration: Declaration?) =
            (declaration as? PlugDeclaration)?.typeReference?.getTarget()
    }

    fun createDeclarations(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        model: SModel,
    ): RevealDeclarationsResult {
        val name = extendedAdapter.name
        val routerAdapter = if (extendedAdapter.outputRouter != null) {
            val routerName = "RouterAdapter_$name"
            findDeclarationOrCreate(
                name = routerName,
                model = model,
                virtualPackage = getPackageName(extendedAdapter.name),
            ) {
                val adapter = fbInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                    name = routerName,
                    fbTypeDescriptor = extendedAdapter.plugTypeDescriptor,
                    reversed = true,
                )
                // create associations with router parameters
                for (event in adapter.outputEvents) {
                    event.associations += factoryUtils.createAssociation(adapter.outputParameters.last())
                }
                if (extendedAdapter.inputRouter != null) {
                    for (event in adapter.inputEvents) {
                        event.associations += factoryUtils.createAssociation(adapter.inputParameters.last())
                    }
                }
                adapter
            }
        } else {
            null
        }
        val leftNetwork = extendedAdapter.leftNetwork
        val leftAdapterName = "Left_$name"
        val leftAdapter = findDeclarationOrCreate(
            name = leftAdapterName,
            model = model,
            virtualPackage = getPackageName(extendedAdapter.name),
        ) {
            fbInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                name = leftAdapterName,
                fbTypeDescriptor = if (leftNetwork != null) {
                    leftNetwork.getCustomNetworkComponents()[1].block.type
                } else {
                    extendedAdapter.plugTypeDescriptor
                },
                reversed = false,
            )
        }
        val middleAdapter = if (leftNetwork == null ||
            (extendedAdapter.internalFbSocketInterface?.isEmpty() != false &&
                    extendedAdapter.internalNetworksInterface?.isEmpty() != false)
        ) {
            leftAdapter
        } else {
            val middleAdapterName = "Middle_$name"
            findDeclarationOrCreate(
                name = middleAdapterName,
                model = model,
                virtualPackage = getPackageName(extendedAdapter.name),
            ) {
                fbInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                    name = middleAdapterName,
                    identifier = extendedAdapter.identifier,
                    fbTypeDescriptor = leftNetwork.getCustomNetworkComponents()[0].block.type,
                    reversed = true,
                )
            }
        }
        val rightAdapter = if (
            extendedAdapter.rightNetwork == null ||
            (extendedAdapter.internalFbPlugInterface?.isEmpty() != false &&
                    extendedAdapter.internalNetworksInterface?.isEmpty() != false)
        ) {
            middleAdapter
        } else {
            val rightAdapterName = "Right_$name"
            findDeclarationOrCreate(
                name = rightAdapterName,
                model = model,
                virtualPackage = getPackageName(extendedAdapter.name),
            ) {
                fbInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                    name = rightAdapterName,
                    fbTypeDescriptor = extendedAdapter.socketTypeDescriptor,
                )
            }
        }

        val leftBlock = leftNetwork?.let { adapterNetworkDeclaration ->
            val leftBlockName = "${extendedAdapter.name}_${adapterNetworkDeclaration.name}"
            val existedBlock: CompositeFBTypeDeclaration? = sModelUtils.findOneDeclarationOrNull(leftBlockName, model)
            if (existedBlock != null) {
                existedBlock
            } else {
                val compositeFB = createCompositeFB(
                    name = leftBlockName,
                    leftAdapter = leftAdapter,
                    rightAdapter = middleAdapter,
                    network = adapterNetworkDeclaration.network,
                )
                sModelUtils.addDeclarationToModel(compositeFB, model, getPackageName(extendedAdapter.name))
                updateInternalAdapterPorts(compositeFB)
                compositeFB
            }
        }
        val rightBlock = extendedAdapter.rightNetwork?.let { adapterNetworkDeclaration ->
            val rightBlockName = "${extendedAdapter.name}_${adapterNetworkDeclaration.name}"
            val existedBlock: CompositeFBTypeDeclaration? = sModelUtils.findOneDeclarationOrNull(rightBlockName, model)
            if (existedBlock != null) {
                existedBlock
            } else {
                val compositeFB = createCompositeFB(
                    name = rightBlockName,
                    leftAdapter = middleAdapter,
                    rightAdapter = rightAdapter,
                    network = adapterNetworkDeclaration.network,
                )
                sModelUtils.addDeclarationToModel(compositeFB, model, getPackageName(extendedAdapter.name))
                updateInternalAdapterPorts(compositeFB)
                compositeFB
            }
        }

        return RevealDeclarationsResult(
            extendedAdapter = extendedAdapter,
            routerAdapter = routerAdapter,
            leftAdapter = leftAdapter,
            middleAdapter = middleAdapter,
            rightAdapter = rightAdapter,
            leftBlockDeclaration = leftBlock,
            rightBlockDeclaration = rightBlock,
            routers = mutableMapOf(),
        )
    }

    private data class ConnectionInfo(
        val connection: FBNetworkConnection,
        val source: Boolean,
        val portPath: PortPath<*>,
    ) {
        val portName: String get() = portPath.portTarget.name
    }

    fun changeBlockPorts(
        fbTypeDeclaration: FBTypeDeclaration,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>
    ) {
        val socketsToChange = fbTypeDeclaration.sockets.filter { socket ->
            identifiersToRevealResult[socket.typeReference.getTarget()?.identifier] != null
        }
        val plugsToChange = fbTypeDeclaration.plugs.filter { plug ->
            identifiersToRevealResult[plug.typeReference.getTarget()?.identifier] != null
        }
        when (fbTypeDeclaration) {
            is CompositeFBTypeDeclaration -> {
                val network = fbTypeDeclaration.network
                val networkConnections = network.eventConnections.asSequence()
                    .plus(network.dataConnections)
                    .plus(network.adapterConnections)
                    .toList()

                val blockToConnections = networkConnections.asSequence()
                    .flatMap { connection ->
                        val targetPortPath = connection.targetReference.getTarget()
                        val target = targetPortPath?.functionBlock
                            ?.let { it.identifier to ConnectionInfo(connection, false, targetPortPath) }
                        val sourcePortPath = connection.sourceReference.getTarget()
                        val source = sourcePortPath?.functionBlock
                            ?.let { it.identifier to ConnectionInfo(connection, true, sourcePortPath) }
                        listOfNotNull(target, source)
                    }
                    .groupBy({ it.first }, { it.second })
                for (socket in socketsToChange) {
                    val connectionsToSourcePort = blockToConnections[socket.identifier] ?: continue
                    val result = identifiersToRevealResult[socket.typeReference.getTarget()?.identifier] ?: continue
                    changePorts(connectionsToSourcePort, socket)
                    socket.typeReference.setTarget(result.getFarRightAdapter())
                }
                for (plug in plugsToChange) {
                    val connectionsToTargetPort = blockToConnections[plug.identifier] ?: continue
                    val result = identifiersToRevealResult[plug.typeReference.getTarget()?.identifier] ?: continue
                    changePorts(connectionsToTargetPort, plug)
                    plug.typeReference.setTarget(result.getFarLeftAdapter())
                }
            }

            is BasicFBTypeDeclaration -> {
                for (socket in socketsToChange) {
                    val result = identifiersToRevealResult[socket.typeReference.getTarget()?.identifier] ?: continue
                    socket.typeReference.setTarget(result.getFarRightAdapter())
                }
                for (plug in plugsToChange) {
                    val result = identifiersToRevealResult[plug.typeReference.getTarget()?.identifier] ?: continue
                    plug.typeReference.setTarget(result.getFarLeftAdapter())
                }
            }

            is ServiceInterfaceFBTypeDeclaration -> error("Extended adapters cannot be used in service interface block")
        }
    }

    private fun changePorts(
        connectionInfos: List<ConnectionInfo>,
        block: FunctionBlockDeclarationBase,
    ) {
        for (connectionInfo in connectionInfos) {
            if (connectionInfo.source) {
                val ports = when (connectionInfo.connection.kind) {
                    EntryKind.EVENT -> block.type.eventOutputPorts
                    EntryKind.DATA -> block.type.dataOutputPorts
                    EntryKind.ADAPTER -> block.type.plugPorts
                }
                connectionInfo.connection.sourceReference.setTarget(
                    block.getPort(ports.first { it.name == connectionInfo.portName }),
                )
            } else {
                val ports = when (connectionInfo.connection.kind) {
                    EntryKind.EVENT -> block.type.eventInputPorts
                    EntryKind.DATA -> block.type.dataInputPorts
                    EntryKind.ADAPTER -> block.type.socketPorts
                }
                connectionInfo.connection.targetReference.setTarget(
                    block.getPort(ports.first { it.name == connectionInfo.portName }),
                )
            }
        }
    }

    fun revealAdapterWithNetBlocks(
        revealResult: RevealDeclarationsResult,
        block: FunctionBlockDeclaration,
        port: FBPortDescriptor,
        count: Int,
        model: SModel,
    ) = if (port.isInput) {
        val network = checkNotNull(block.container)
        revealRightPart(
            revealResult = revealResult,
            leftPort = createRightPublishSubscribeAdapter(
                revealResult = revealResult,
                network = network,
                model = model,
            ),
            rightPort = block.getPort(port),
            network = network,
        )
    } else {
        val network = checkNotNull(block.container)
        val portPaths = revealLeftPart(
            revealResult = revealResult,
            sourcePort = block.getPort(port),
            network = network,
            model = model,
            connectionsCount = count,
        )
        for (connectionSourcePort in portPaths) {
            val publishSubscribeAdapter = createLeftPublishSubscribeAdapter(
                revealResult = revealResult,
                network = network,
                model = model,
            )

            network.adapterConnections += factoryUtils.createConnection(
                source = connectionSourcePort,
                target = publishSubscribeAdapter.getPort(
                    publishSubscribeAdapter.type.socketPorts.first()
                ),
                entryKind = EntryKind.ADAPTER,
            )
        }
    }

    fun revealExtendedAdaptersInNetwork(
        network: FBNetwork,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>,
        model: SModel,
        withPublishSubscribe: Boolean,
    ) {
        val adapterConnections = network.adapterConnections.asSequence()
            .filter { getSourcePlugAdapterDeclaration(it)?.identifier in identifiersToRevealResult }
            .mapNotNull { connection -> (connection.sourceReference.getTarget())?.let { it to connection } }
            .groupBy({ it.first }, { it.second })
        val connectionsToRemove = network.adapterConnections.asSequence()
            .filter { it.sourceReference.getTarget() in adapterConnections }
            .toSet()

        for ((sourcePort, connections) in adapterConnections) {
            // plugBlock -> router -> leftBlock -> [publish subscribe] -> rightBlock -> socketBlock
            val plugAdapterIdentifier = getPlugAdapterDeclaration(sourcePort.portTarget)?.identifier
            val revealResult = identifiersToRevealResult[plugAdapterIdentifier]
            checkNotNull(revealResult)
            if (connections.isEmpty()) {
                continue
            }
            val portsBeforePublishBlocks = revealLeftPart(
                revealResult = revealResult,
                sourcePort = sourcePort,
                network = network,
                model = model,
                connectionsCount = connections.size,
            )
            if (withPublishSubscribe) {
                for (connectionSourcePort in portsBeforePublishBlocks) {
                    val publishSubscribeAdapter = createLeftPublishSubscribeAdapter(
                        revealResult = revealResult,
                        network = network,
                        model = model,
                    )

                    network.adapterConnections += factoryUtils.createConnection(
                        source = connectionSourcePort,
                        target = publishSubscribeAdapter.getPort(
                            publishSubscribeAdapter.type.socketPorts.first()
                        ),
                        entryKind = EntryKind.ADAPTER,
                    )
                }
            }

            val connectionsAndPorts = connections.zip(portsBeforePublishBlocks)
            for (i in connectionsAndPorts.indices) {
                val (connection, connectionSourcePort) = connectionsAndPorts[i]
                revealRightPart(
                    revealResult = revealResult,
                    leftPort = if (withPublishSubscribe) {
                        createRightPublishSubscribeAdapter(
                            revealResult = revealResult,
                            network = network,
                            model = model,
                        )
                    } else {
                        connectionSourcePort
                    },
                    rightPort = checkNotNull(connection.targetReference.getTarget()),
                    network = network,
                )
            }
        }
        network.adapterConnections.removeIf { it in connectionsToRemove }
    }

    fun revealLeftPart(
        revealResult: RevealDeclarationsResult,
        sourcePort: PortPath<*>,
        network: FBNetwork,
        model: SModel,
        connectionsCount: Int,
    ): List<PortPath<out Declaration>> {
        val adapterType = revealResult.extendedAdapter
        val outputRouter = adapterType.outputRouter
        val routerDeclaration = if (outputRouter == null) {
            if (connectionsCount > 1) {
                error("Port has more than one connection")
            }
            null
        } else {
            revealResult.routers.computeIfAbsent(connectionsCount) {
                val name = "${adapterType.name}_$connectionsCount"
                sModelUtils.findOneDeclarationOrNull("${name}_router", model)
                    ?: switchGenerator.generateRouter(
                        name = name,
                        model = model,
                        source = checkNotNull(revealResult.routerAdapter),
                        target = revealResult.leftAdapter,
                        outputsCount = connectionsCount,
                        outputRouterName = outputRouter.name,
                        inputRouterName = adapterType.inputRouter?.name,
                        virtualPackage = getPackageName(adapterType.name),
                    )
            }
        }

        val portsBeforePublishBlocks: List<PortPath<out Declaration>> = if (routerDeclaration == null) {
            listOf(sourcePort)
        } else {
            val routerBlock = factoryUtils.addFunctionalBlock(routerDeclaration, network)
            network.adapterConnections += factoryUtils.createConnection(
                source = sourcePort,
                target = routerBlock.getPort(routerBlock.type.socketPorts.first()),
                entryKind = EntryKind.ADAPTER,
            )
            routerBlock.type.plugPorts.map { routerBlock.getPort(it) }
        }
        return portsBeforePublishBlocks.map {
            connectBlockReturnPlugPort(
                blockDeclaration = revealResult.leftBlockDeclaration,
                sourcePort = it,
                network = network,
                name = revealResult.leftBlockDeclaration?.name,
            )
        }
    }

    private fun createLeftPublishSubscribeAdapter(
        revealResult: RevealDeclarationsResult,
        network: FBNetwork,
        model: SModel,
    ): FunctionBlockDeclaration {
        val adapterType = revealResult.extendedAdapter
        val leftPublishSubscribeAdapter = revealResult.leftPublishSubscribeAdapter ?: run {
            val name = "${adapterType.name}_LeftPublishSubscribeAdapter"
            val existedDeclaration = sModelUtils.findOneDeclarationOrNull<CompositeFBTypeDeclaration>(name, model)
            if (existedDeclaration != null) {
                existedDeclaration
            } else {
                val leftCompositeFBType = factory.createCompositeFBTypeDeclaration(StringIdentifier(name))
                val socket = factory.createSocketDeclaration(StringIdentifier("socket"))
                socket.typeReference.setTarget(revealResult.middleAdapter)
                leftCompositeFBType.sockets += socket
                sModelUtils.addDeclarationToModel(leftCompositeFBType, model, getPackageName(adapterType.name))
                createPublishSubscribeAdapter(
                    compositeFBType = leftCompositeFBType,
                    declaration = socket,
                    currentModel = model,
                    packageName = adapterType.name,
                )
            }
        }
        revealResult.leftPublishSubscribeAdapter = leftPublishSubscribeAdapter
        val leftPublishSubscribeAdapterBlock = factoryUtils.addFunctionalBlock(
            blockType = leftPublishSubscribeAdapter,
            network = network,
        )
        addPublishSubscribeBlocks(
            source = leftPublishSubscribeAdapterBlock,
            network = network,
            currentModel = model,
            name = "Left_${adapterType.name}",
        )
        return leftPublishSubscribeAdapterBlock
    }

    private fun revealRightPart(
        revealResult: RevealDeclarationsResult,
        leftPort: PortPath<out Declaration>,
        rightPort: PortPath<out Declaration>,
        network: FBNetwork,
    ) {
        val portBeforeSocketBlock = connectBlockReturnPlugPort(
            blockDeclaration = revealResult.rightBlockDeclaration,
            sourcePort = leftPort,
            network = network,
            name = revealResult.rightBlockDeclaration?.name,
        )

        network.adapterConnections += factoryUtils.createConnection(
            source = portBeforeSocketBlock,
            target = rightPort,
            entryKind = EntryKind.ADAPTER
        )
    }

    private fun createRightPublishSubscribeAdapter(
        revealResult: RevealDeclarationsResult,
        network: FBNetwork,
        model: SModel,
    ): PortPath<PlugDeclaration> {
        val adapterType = revealResult.extendedAdapter
        val rightPublishSubscribeAdapter = revealResult.rightPublishSubscribeAdapter ?: run {
            val name = "${adapterType.name}_RightPublishSubscribeAdapter"
            val existedDeclaration = sModelUtils.findOneDeclarationOrNull<CompositeFBTypeDeclaration>(name, model)
            if (existedDeclaration != null) {
                existedDeclaration
            } else {
                val rightCompositeFBType = factory.createCompositeFBTypeDeclaration(StringIdentifier(name))
                val plug = factory.createPlugDeclaration(StringIdentifier("plug"))
                plug.typeReference.setTarget(revealResult.middleAdapter)
                rightCompositeFBType.plugs += plug
                sModelUtils.addDeclarationToModel(rightCompositeFBType, model, getPackageName(adapterType.name))
                createPublishSubscribeAdapter(
                    compositeFBType = rightCompositeFBType,
                    declaration = plug,
                    currentModel = model,
                    packageName = adapterType.name
                )
            }
        }
        revealResult.rightPublishSubscribeAdapter = rightPublishSubscribeAdapter
        val rightPublishSubscribeAdapterBlock = factoryUtils.addFunctionalBlock(
            blockType = rightPublishSubscribeAdapter,
            network = network,
        )
        addPublishSubscribeBlocks(
            source = rightPublishSubscribeAdapterBlock,
            network = network,
            currentModel = model,
            name = "Right_${adapterType.name}",
        )
        return PortPath.createPlugPortPath(
            functionBlock = rightPublishSubscribeAdapterBlock,
            portTarget = rightPublishSubscribeAdapter.plugs.first(),
        )
    }

    private fun connectBlockReturnPlugPort(
        blockDeclaration: CompositeFBTypeDeclaration?,
        sourcePort: PortPath<*>,
        network: FBNetwork,
        name: String? = null,
    ): PortPath<out Declaration> {
        return if (blockDeclaration == null) {
            sourcePort
        } else {
            val leftBlock = factoryUtils.addFunctionalBlock(blockDeclaration, network, name)
            network.adapterConnections += factoryUtils.createConnection(
                source = sourcePort,
                target = leftBlock.getPort(leftBlock.type.socketPorts.first()),
                entryKind = EntryKind.ADAPTER
            )
            leftBlock.getPort(leftBlock.type.plugPorts.first())
        }
    }

    private fun createPublishSubscribeAdapter(
        compositeFBType: CompositeFBTypeDeclaration,
        declaration: FunctionBlockDeclarationBase,
        currentModel: SModel,
        packageName: String,
    ): CompositeFBTypeDeclaration {
        val typeDescriptor = declaration.type

        val eventToNumberFbType = eventToNumberFbTypes.computeIfAbsent(
            typeDescriptor.eventOutputPorts.size
        ) { number ->
            val name = "EventToNumberAdapter_$number"
            findDeclarationOrCreate(
                name = name,
                model = currentModel,
                virtualPackage = getPackageName(packageName),
            ) {
                createEventToNumberConverter(
                    name = name,
                    inputCount = number,
                )
            }
        }

        val eventToNumberBlock = factoryUtils.addFunctionalBlock(eventToNumberFbType, compositeFBType.network)

        val numberToEventFbType = numberToEventFbTypes.computeIfAbsent(
            typeDescriptor.eventInputPorts.size
        ) { number ->
            val name = "NumberToEventAdapter_$number"
            findDeclarationOrCreate(
                name = name,
                model = currentModel,
                virtualPackage = getPackageName(packageName),
            ) {
                createNumberToEventConverter(
                    name = "NumberToEventAdapter_$number",
                    inputCount = number,
                )
            }
        }

        val numberToEventBlock = factoryUtils.addFunctionalBlock(numberToEventFbType, compositeFBType.network)

        // event way: inputs -> numberToEventBlock -> socket -> eventToNumberBlock -> outputs
        // data way: inputs -> numberToEventBlock
        // data way: eventToNumberBlock -> outputs
        // data way: inputs -> socket -> outputs
        factoryUtils.copyEventsAndConnect(
            destination = compositeFBType.inputEvents,
            destinationBlock = null,
            sources = numberToEventFbType.inputEvents,
            sourceBlock = numberToEventBlock,
            network = compositeFBType.network,
            outputToInput = false,
        )
        factoryUtils.copyParametersAndConnect(
            destination = compositeFBType.inputParameters,
            destinationBlock = null,
            source = numberToEventFbType.inputParameters,
            sourceBlock = numberToEventBlock,
            network = compositeFBType.network,
            outputToInput = false,
        )
        compositeFBType.network.eventConnections += typeDescriptor.eventInputPorts
            .zip(numberToEventFbType.outputEvents)
            .map {
                factoryUtils.createConnection(
                    entryKind = EntryKind.EVENT,
                    source = PortPath.createEventPortPath(numberToEventBlock, it.second),
                    target = declaration.getPort(it.first),
                )
            }
        compositeFBType.network.eventConnections += typeDescriptor.eventOutputPorts
            .zip(eventToNumberFbType.inputEvents)
            .map {
                factoryUtils.createConnection(
                    entryKind = EntryKind.EVENT,
                    source = declaration.getPort(it.first),
                    target = PortPath.createEventPortPath(eventToNumberBlock, it.second),
                )
            }
        factoryUtils.copyEventsAndConnect(
            destination = compositeFBType.outputEvents,
            destinationBlock = null,
            sources = eventToNumberFbType.outputEvents,
            sourceBlock = eventToNumberBlock,
            network = compositeFBType.network
        )
        factoryUtils.copyParametersAndConnect(
            destination = compositeFBType.outputParameters,
            destinationBlock = null,
            source = eventToNumberFbType.outputParameters,
            sourceBlock = eventToNumberBlock,
            network = compositeFBType.network
        )
        factoryUtils.copyParametersAndConnect(
            destination = compositeFBType.inputParameters,
            destinationBlock = null,
            source = typeDescriptor.dataInputPorts.map { it.declaration as ParameterDeclaration },
            sourceBlock = declaration,
            network = compositeFBType.network,
            outputToInput = false,
        )
        factoryUtils.copyParametersAndConnect(
            destination = compositeFBType.outputParameters,
            destinationBlock = null,
            source = typeDescriptor.dataOutputPorts.map { it.declaration as ParameterDeclaration },
            sourceBlock = declaration,
            network = compositeFBType.network
        )
        for (newInput in compositeFBType.inputEvents) {
            newInput.associations += compositeFBType.inputParameters.map { factoryUtils.createAssociation(it) }
        }
        for (newOutput in compositeFBType.outputEvents) {
            newOutput.associations += compositeFBType.outputParameters.map { factoryUtils.createAssociation(it) }
        }
        return compositeFBType
    }

    private fun createEventToNumberConverter(
        name: String,
        inputCount: Int,
    ): BasicFBTypeDeclaration {
        val basicFbType = factory.createBasicFBTypeDeclaration(StringIdentifier(name))
        val events = (0 until inputCount).map { factory.createEventDeclaration(StringIdentifier("I_$it")) }
        basicFbType.inputEvents += events
        val outputEvent = factory.createEventDeclaration(StringIdentifier("REQ"))
        basicFbType.outputEvents += outputEvent
        val parameterOutput = factory.createParameterDeclaration(StringIdentifier("I_E_number"))
        parameterOutput.type = ElementaryType.INT
        basicFbType.outputParameters += parameterOutput
        outputEvent.associations += factoryUtils.createAssociation(parameterOutput)
        val start = factory.createStateDeclaration(StringIdentifier("Start"))
        basicFbType.ecc.states += start
        for (i in basicFbType.inputEvents.indices) {
            val event = basicFbType.inputEvents[i]
            val state = factory.createStateDeclaration(StringIdentifier(event.name))
            basicFbType.ecc.states += state
            basicFbType.ecc.transitions += factoryUtils.createStateTransition(start, state, event)
            basicFbType.ecc.transitions += factoryUtils.createStateTransition(state, start)

            val stateAction = factory.createStateAction()
            state.actions += stateAction
            stateAction.event.setFQName(outputEvent.name)
            val algorithmDeclaration = factory.createAlgorithmDeclaration(
                StringIdentifier(state.name + "_algorithm")
            )
            val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            algorithmDeclaration.body = algorithmBody

            algorithmBody.statements += stFactoryUtils.createAssign(
                variable = parameterOutput,
                assignable = stFactoryUtils.createIntLiteral(i),
            )
            stateAction.algorithm.setTarget(algorithmDeclaration)
            basicFbType.algorithms += algorithmDeclaration
        }
        return basicFbType
    }

    private fun createNumberToEventConverter(
        name: String,
        inputCount: Int,
    ): BasicFBTypeDeclaration {
        val basicFbType = factory.createBasicFBTypeDeclaration(StringIdentifier(name))
        val events = (0 until inputCount).map { factory.createEventDeclaration(StringIdentifier("O_$it")) }
        basicFbType.outputEvents += events
        val inputEvent = factory.createEventDeclaration(StringIdentifier("IND"))
        basicFbType.inputEvents += inputEvent
        val parameterInput = factory.createParameterDeclaration(StringIdentifier("O_E_number"))
        parameterInput.type = ElementaryType.INT
        basicFbType.inputParameters += parameterInput
        val inputAssociation = factory.createEventAssociation()
        inputAssociation.parameterReference.setTarget(parameterInput)
        inputEvent.associations += inputAssociation
        val start = factory.createStateDeclaration(StringIdentifier("Start"))
        basicFbType.ecc.states += start
        for (i in basicFbType.outputEvents.indices) {
            val event = basicFbType.outputEvents[i]
            val state = factory.createStateDeclaration(StringIdentifier(event.name))
            basicFbType.ecc.states += state
            basicFbType.ecc.transitions += factoryUtils.createStateTransition(
                source = start,
                target = state,
                eventCondition = inputEvent,
                condition = stFactoryUtils.intEquality(parameterInput, i)
            )
            basicFbType.ecc.transitions += factoryUtils.createStateTransition(state, start)
            val stateAction = factory.createStateAction()
            state.actions += stateAction
            stateAction.event.setFQName(event.name)
        }
        return basicFbType
    }

    private fun addPublishSubscribeBlocks(
        source: FunctionBlockDeclaration,
        network: FBNetwork,
        currentModel: SModel,
        name: String,
    ) {
        val fbTypeDeclaration = source.typeReference.getTarget()
        checkNotNull(fbTypeDeclaration)
        val outputEvent = fbTypeDeclaration.outputEvents.first()
        val outputParams = fbTypeDeclaration.outputParameters
        if (outputParams.size > 10) {
            error("Size more than 10")
        }
        val publishFbType = getFBTypeFrom4diacModel(currentModel, "PUBLISH_${outputParams.size}")
        val publishBlock = factoryUtils.addFunctionalBlock(publishFbType, network, name = "Publish_${name}")
        network.eventConnections += factoryUtils.createConnection(
            source = PortPath.createEventPortPath(source, outputEvent),
            target = PortPath.createEventPortPath(
                publishBlock,
                publishFbType.inputEvents.first { it.name == outputEvent.name }
            ),
            entryKind = EntryKind.EVENT,
        )
        network.dataConnections += fbTypeDeclaration.outputParameters
            .zip(publishFbType.inputParameters.filter { it.name.startsWith("SD") })
            .map { (sourceParameter, publishParameter) ->
                factoryUtils.createConnection(
                    source = PortPath.createDataPortPath(source, sourceParameter),
                    target = PortPath.createDataPortPath(publishBlock, publishParameter),
                    entryKind = EntryKind.DATA,
                )
            }

        val inputEvent = fbTypeDeclaration.inputEvents.first()
        val inputParams = fbTypeDeclaration.inputParameters
        if (inputParams.size > 10) {
            error("Size more than 10")
        }
        val subscribeFbType = getFBTypeFrom4diacModel(currentModel, "SUBSCRIBE_${inputParams.size}")
        val subscribeBlock = factoryUtils.addFunctionalBlock(subscribeFbType, network, name = "Subscribe_${name}")
        network.eventConnections += factoryUtils.createConnection(
            source = PortPath.createEventPortPath(
                subscribeBlock,
                subscribeFbType.outputEvents.first { it.name == inputEvent.name },
            ),
            target = PortPath.createEventPortPath(source, inputEvent),
            entryKind = EntryKind.EVENT,
        )
        network.dataConnections += fbTypeDeclaration.inputParameters
            .zip(subscribeFbType.outputParameters.filter { it.name.startsWith("RD") })
            .map { (sourceParameter, subscribeParameter) ->
                factoryUtils.createConnection(
                    source = PortPath.createDataPortPath(subscribeBlock, subscribeParameter),
                    target = PortPath.createDataPortPath(source, sourceParameter),
                    entryKind = EntryKind.DATA,
                )
            }
    }

    private fun getFBTypeFrom4diacModel(
        currentModel: SModel,
        nodeName: String,
    ): FBTypeDeclaration = publishSubscribeProvider?.invoke(nodeName)
        ?: sModelUtils.getFBTypeFrom4diacModel(currentModel, nodeName)

    private fun createCompositeFB(
        name: String,
        leftAdapter: AdapterTypeDeclaration,
        rightAdapter: AdapterTypeDeclaration,
        network: FBNetwork,
    ): CompositeFBTypeDeclaration {
        val composite = factory.createCompositeFBTypeDeclaration(StringIdentifier(name))

        val plug = factory.createPlugDeclaration(rightAdapter.identifier)
        plug.typeReference.setTarget(rightAdapter)
        plug.name = "plug"
        composite.plugs += plug

        val socket = factory.createSocketDeclaration(leftAdapter.identifier)
        socket.typeReference.setTarget(leftAdapter)
        socket.name = "socket"
        composite.sockets += socket

        composite.network.functionBlocks += network.functionBlocks.map { it.copy() as FunctionBlockDeclaration }
        composite.network.adapterConnections += network.adapterConnections.map { it.copy() as FBNetworkConnection }
        composite.network.eventConnections += network.eventConnections.map { it.copy() as FBNetworkConnection }
        composite.network.dataConnections += network.dataConnections.map { it.copy() as FBNetworkConnection }
        composite.network.endpointCoordinates += network.endpointCoordinates.map { it.copy() as EndpointCoordinate }
        return composite
    }

    private fun updateInternalAdapterPorts(block: CompositeFBTypeDeclaration) {
        val plug = block.plugs.first()
        val socket = block.sockets.first()
        for (connection in block.network.eventConnections.asSequence()
            .plus(block.network.dataConnections)
            .plus(block.network.adapterConnections)
            .toList()) {
            val source = connection.sourceReference.getTarget()
            val newSource = getPortForInternalAdapterBlock(source, plug, socket)
            if (newSource != null) {
                connection.sourceReference.setTarget(newSource)
            }
            val target = connection.targetReference.getTarget()
            val newTarget = getPortForInternalAdapterBlock(target, plug, socket)
            if (newTarget != null) {
                connection.targetReference.setTarget(newTarget)
            }
        }
    }

    private fun getPortForInternalAdapterBlock(
        port: PortPath<*>?,
        plug: PlugDeclaration,
        socket: SocketDeclaration,
    ): PortPath<out Declaration>? {
        if (port?.functionBlock?.name == "Plug_Connection") {
            return plug.ports.first { it.portTarget.name == port.portTarget.name }
        } else if (port?.functionBlock?.name == "Socket_Connection") {
            return socket.ports.first { it.portTarget.name == port.portTarget.name }
        }
        return null
    }

    /**
     * Tries to find exactly one declaration with provided name in provided model,
     * returns it if type of declaration matched with expected.
     * Otherwise, returns declaration from producer and adds it to the model
     * and removes all other nodes with provided name.
     *
     * This method helps to prevent reference invalidation after second application of the reveal algorithm
     */
    private inline fun <reified T: Declaration> findDeclarationOrCreate(
        name: String,
        model: SModel,
        virtualPackage: String?,
        declarationProvider: () -> T,
    ): T {
        val existedDeclaration = sModelUtils.findOneDeclarationOrNull<T>(name, model)
        if (existedDeclaration != null) {
            return existedDeclaration
        }
        val newDeclaration = declarationProvider()
        sModelUtils.addDeclarationToModel(newDeclaration, model, virtualPackage)
        return newDeclaration
    }
}
