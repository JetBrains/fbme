package org.fbme.ide.richediting.utils

import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.SNodeUtil
import org.fbme.ide.iec61499.repository.PlatformElement
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
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.expressions.LiteralKind
import org.fbme.lib.st.types.ElementaryType
import org.jetbrains.mps.openapi.model.SModel

class ExtendedAdapterUtils(
    private val factory: IEC61499Factory,
    private val stFactory: STFactory,
    private val owner: PlatformRepository,
    private val publishSubscribeProvider: ((name: String) -> FBTypeDeclaration)? = null,
) {
    private val factoryUtils: IEC61499FactoryUtils = IEC61499FactoryUtils(factory)
    private val stFactoryUtils: STFactoryUtils = STFactoryUtils(stFactory)
    private val switchGenerator = AdapterSwitchGenerator(factory, stFactory)
    private val numberToEventFbTypes: MutableMap<Int, BasicFBTypeDeclaration> = mutableMapOf()
    private val eventToNumberFbTypes: MutableMap<Int, BasicFBTypeDeclaration> = mutableMapOf()

    companion object {
        private const val VIRTUAL_PACKAGE_NAME = "generated"

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

    data class RevealDeclarationsResult(
        val extendedAdapter: ExtendedAdapterTypeDeclaration,
        val routerAdapter: AdapterTypeDeclaration?,
        val leftAdapter: AdapterTypeDeclaration,
        val middleAdapter: AdapterTypeDeclaration,
        val rightAdapter: AdapterTypeDeclaration,
        val leftBlockDeclaration: CompositeFBTypeDeclaration?,
        val rightBlockDeclaration: CompositeFBTypeDeclaration?,
        var leftPublishSubscribeAdapter: CompositeFBTypeDeclaration? = null,
        var rightPublishSubscribeAdapter: CompositeFBTypeDeclaration? = null,
        val routers: MutableMap<Int, CompositeFBTypeDeclaration> = mutableMapOf(),
    ) {
        fun getFarLeftAdapter(): AdapterTypeDeclaration = routerAdapter ?: leftAdapter

        fun getFarRightAdapter(): AdapterTypeDeclaration = rightAdapter
    }

    fun revealAdapter(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        currentModel: SModel,
    ): RevealDeclarationsResult {
        val revealDeclarations = revealDeclarations(extendedAdapter, currentModel)
        val declarationsResults = listOf(revealDeclarations)
        val identifiersToRevealResult =
            declarationsResults.associateBy { it.extendedAdapter.identifier }

        revealAdapterInNetworks(
            currentModel = currentModel,
            modelToCheck = currentModel,
            identifiersToRevealResult = identifiersToRevealResult,
        )
        return revealDeclarations
    }

    fun revealAdapterWithNet(
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
                number = 1,
                model = model,
            ),
            rightPort = block.getPort(port),
            network = network,
            number = 1,
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
        for ((number, connectionSourcePort) in portPaths.withIndex()) {
            val publishSubscribeAdapter = createLeftPublishSubscribeAdapter(
                revealResult = revealResult,
                network = network,
                number = number,
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

    private fun revealAdapterInAllNetworks(
        currentModel: SModel,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>
    ) {
        for (module in currentModel.repository.modules) {
            for (model in module.models) {
                revealAdapterInNetworks(
                    currentModel = currentModel,
                    modelToCheck = model,
                    identifiersToRevealResult = identifiersToRevealResult
                )
            }
        }
    }

    private fun revealAdapterInNetworks(
        currentModel: SModel,
        modelToCheck: SModel,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>
    ) {
        val rootNodes = modelToCheck.rootNodes.toList()
        for (node in rootNodes) {
            val fbTypeDeclaration = owner.adapterOrNull<FBTypeDeclaration>(node)
            if (fbTypeDeclaration != null) {
                fbTypeDeclaration.sockets.forEach {
                    val revealDeclarationsResult = identifiersToRevealResult[it.typeReference.getTarget()?.identifier]
                    if (revealDeclarationsResult != null) {
                        it.typeReference.setTarget(revealDeclarationsResult.getFarRightAdapter())
                    }
                }
                fbTypeDeclaration.plugs.forEach {
                    val revealDeclarationsResult = identifiersToRevealResult[it.typeReference.getTarget()?.identifier]
                    if (revealDeclarationsResult != null) {
                        it.typeReference.setTarget(revealDeclarationsResult.getFarLeftAdapter())
                    }
                }
            }
        }
        for (node in rootNodes) {
            val declarationWithNetwork = owner.adapterOrNull<DeclarationWithNetwork>(node)
            if (declarationWithNetwork != null) {
                val sourceIdentifiersToRevealResult =
                    identifiersToRevealResult.mapKeys { it.value.getFarLeftAdapter().identifier }
                revealExtendedAdaptersInNetwork(
                    network = declarationWithNetwork.network,
                    identifiersToRevealResult = sourceIdentifiersToRevealResult,
                    model = currentModel,
                    withPublishSubscribe = false,
                )
            }
        }
    }

    fun revealDeclarations(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        model: SModel?,
    ): RevealDeclarationsResult {
        val name = extendedAdapter.name
        val FBInterfaceDeclarationUtils = FBInterfaceDeclarationUtils(factory)
        val leftAdapter = FBInterfaceDeclarationUtils.generateAdapterFromDescriptor(
            name = "Left_$name",
            fbTypeDescriptor = extendedAdapter.getCustomNetworkComponents()[1].block.type,
            reversed = false,
        )
        val routerAdapter = if (extendedAdapter.outputRouter != null) {
            FBInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                name = "RouterAdapter_$name",
                fbTypeDescriptor = extendedAdapter.plugTypeDescriptor,
                reversed = true,
            )
        } else {
            null
        }
        val leftNetwork = extendedAdapter.leftNetwork
        val middleAdapter = if (leftNetwork == null ||
            (extendedAdapter.internalFbSocketInterface?.isEmpty() != false &&
                    extendedAdapter.internalNetworksInterface?.isEmpty() != false)
        ) {
            leftAdapter
        } else {
            FBInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                name = "Middle_$name",
                identifier = extendedAdapter.identifier,
                fbTypeDescriptor = leftNetwork.getCustomNetworkComponents()[0].block.type,
                reversed = true,
            )
        }
        val rightAdapter = if (
            extendedAdapter.rightNetwork == null ||
            (extendedAdapter.internalFbPlugInterface?.isEmpty() != false &&
                    extendedAdapter.internalNetworksInterface?.isEmpty() != false)
        ) {
            middleAdapter
        } else {
            FBInterfaceDeclarationUtils.generateAdapterFromDescriptor(
                name = "Right_$name",
                fbTypeDescriptor = extendedAdapter.socketTypeDescriptor,
            )
        }

        val leftBlock = leftNetwork?.let {
            createCompositeFB(
                name = "${extendedAdapter.name}_${it.name}",
                leftAdapter = leftAdapter,
                rightAdapter = middleAdapter,
                network = it.network,
            )
        }
        val rightBlock = extendedAdapter.rightNetwork?.let {
            createCompositeFB(
                name = "${extendedAdapter.name}_${it.name}",
                leftAdapter = middleAdapter,
                rightAdapter = rightAdapter,
                network = it.network,
            )
        }
        model?.addRootNodes(
            routerAdapter,
            leftAdapter,
            middleAdapter,
            rightAdapter,
            leftBlock,
            rightBlock,
            virtualPackage = VIRTUAL_PACKAGE_NAME,
        )
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

    private fun revealExtendedAdaptersInNetwork(
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
                for ((number, connectionSourcePort) in portsBeforePublishBlocks.withIndex()) {
                    val publishSubscribeAdapter = createLeftPublishSubscribeAdapter(
                        revealResult = revealResult,
                        network = network,
                        number = number,
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
                            number = i,
                            model = model,
                        )
                    } else {
                        connectionSourcePort
                    },
                    rightPort = checkNotNull(connection.targetReference.getTarget()),
                    network = network,
                    number = i,
                )
            }
        }
        network.adapterConnections.removeIf { it in connectionsToRemove }
    }

    private fun revealLeftPart(
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
                switchGenerator.generateRouter(
                    name = "${adapterType.name}_$connectionsCount",
                    model = model,
                    socketAdapterTypeDeclaration = checkNotNull(revealResult.routerAdapter),
                    plugAdapterTypeDeclaration = revealResult.leftAdapter,
                    outputsCount = connectionsCount,
                    outputRouterName = outputRouter.name,
                    inputRouterName = adapterType.inputRouter?.name,
                    virtualPackage = VIRTUAL_PACKAGE_NAME,
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
        return portsBeforePublishBlocks.mapIndexed { index, it ->
            connectBlockReturnPlugPort(
                blockDeclaration = revealResult.leftBlockDeclaration,
                sourcePort = it,
                network = network,
                name = revealResult.leftBlockDeclaration?.let { "${it.name}_$index" },
            )
        }
    }

    private fun createLeftPublishSubscribeAdapter(
        revealResult: RevealDeclarationsResult,
        network: FBNetwork,
        number: Int,
        model: SModel,
    ): FunctionBlockDeclaration {
        val adapterType = revealResult.extendedAdapter
        val leftPublishSubscribeAdapter = revealResult.leftPublishSubscribeAdapter ?: run {
            val leftCompositeFBType = factory.createCompositeFBTypeDeclaration(
                StringIdentifier("${adapterType.name}_LeftPublishSubscribeAdapter_$number")
            )
            val socket = factory.createSocketDeclaration(StringIdentifier("socket"))
            socket.typeReference.setTarget(revealResult.middleAdapter)
            leftCompositeFBType.sockets += socket
            model.addRootNodes(leftCompositeFBType, virtualPackage = VIRTUAL_PACKAGE_NAME)
            createPublishSubscribeAdapter(
                compositeFBType = leftCompositeFBType,
                declaration = socket,
                currentModel = model,
                name = adapterType.name,
            )
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
            name = "Left_${adapterType.name}_$number",
        )
        return leftPublishSubscribeAdapterBlock
    }

    private fun revealRightPart(
        revealResult: RevealDeclarationsResult,
        leftPort: PortPath<out Declaration>,
        rightPort: PortPath<out Declaration>,
        network: FBNetwork,
        number: Int,
    ) {
        val portBeforeSocketBlock = connectBlockReturnPlugPort(
            blockDeclaration = revealResult.rightBlockDeclaration,
            sourcePort = leftPort,
            network = network,
            name = revealResult.rightBlockDeclaration?.let { "${it.name}_$number" }
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
        number: Int,
        model: SModel,
    ): PortPath<PlugDeclaration> {
        val adapterType = revealResult.extendedAdapter
        val rightPublishSubscribeAdapter = revealResult.rightPublishSubscribeAdapter ?: run {
            val rightCompositeFBType = factory.createCompositeFBTypeDeclaration(
                StringIdentifier("${adapterType.name}_RightPublishSubscribeAdapter_$number")
            )
            val plug = factory.createPlugDeclaration(StringIdentifier("plug"))
            plug.typeReference.setTarget(revealResult.middleAdapter)
            rightCompositeFBType.plugs += plug
            model.addRootNodes(rightCompositeFBType, virtualPackage = VIRTUAL_PACKAGE_NAME)
            createPublishSubscribeAdapter(
                compositeFBType = rightCompositeFBType,
                declaration = plug,
                currentModel = model,
                name = adapterType.name,
            )
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
            name = "Right_${adapterType.name}_$number",
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
        name: String,
    ): CompositeFBTypeDeclaration {
        val typeDescriptor = declaration.type

        val eventToNumberFbType = eventToNumberFbTypes.computeIfAbsent(
            typeDescriptor.eventOutputPorts.size
        ) { number ->
            createEventToNumberConverter(
                name = "${name}_EventToNumberAdapter_$number",
                inputCount = number,
            ).also { currentModel.addRootNodes(it, virtualPackage = VIRTUAL_PACKAGE_NAME) }
        }

        val eventToNumberBlock = factoryUtils.addFunctionalBlock(eventToNumberFbType, compositeFBType.network)

        val numberToEventFbType = numberToEventFbTypes.computeIfAbsent(
            typeDescriptor.eventOutputPorts.size
        ) { number ->
            createNumberToEventConverter(
                name = "${name}_NumberToEventAdapter_$number",
                inputCount = number,
            ).also { currentModel.addRootNodes(it, virtualPackage = VIRTUAL_PACKAGE_NAME) }
        }

        val numberToEventBlock = factoryUtils.addFunctionalBlock(numberToEventFbType, compositeFBType.network)

        // events: inputs -> numberToEventBlock -> socket -> eventToNumberBlock -> outputs
        // data: inputs -> numberToEventBlock
        // data: eventToNumberBlock -> outputs
        // data: inputs -> socket -> outputs
        factoryUtils.copyEventsAndConnect(
            destination = compositeFBType.inputEvents,
            destinationBlock = null,
            source = numberToEventFbType.inputEvents,
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
            source = eventToNumberFbType.outputEvents,
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
        val start = factory.createStateDeclaration(StringIdentifier("Start"))
        basicFbType.ecc.states += start
        for (i in basicFbType.inputEvents.indices) {
            val event = basicFbType.inputEvents[i]
            val state = factory.createStateDeclaration(StringIdentifier(event.name))
            basicFbType.ecc.states += state
            val startToState = factory.createStateTransition()
            basicFbType.ecc.transitions += startToState
            startToState.sourceReference.setTarget(start)
            startToState.targetReference.setTarget(state)
            startToState.condition.eventReference.setFQName(event.name)
            val stateToStart = factory.createStateTransition()
            basicFbType.ecc.transitions += stateToStart
            stateToStart.sourceReference.setTarget(state)
            stateToStart.targetReference.setTarget(start)

            val stateAction = factory.createStateAction()
            state.actions += stateAction
            stateAction.event.setFQName(outputEvent.name)
            val algorithmDeclaration = factory.createAlgorithmDeclaration(
                StringIdentifier(state.name + "_algorithm")
            )
            val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            algorithmDeclaration.body = algorithmBody
            val assignment = stFactory.createAssignmentStatement()
            val variableReference = stFactory.createVariableReference()
            variableReference.reference.setTarget(parameterOutput)
            assignment.variable = variableReference
            val literal = stFactory.createLiteral(LiteralKind.DEC_INT) as Literal<Int?>
            literal.value = i
            assignment.expression = literal

            algorithmBody.statements += assignment
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
        val start = factory.createStateDeclaration(StringIdentifier("Start"))
        basicFbType.ecc.states += start
        for (i in basicFbType.outputEvents.indices) {
            val event = basicFbType.outputEvents[i]
            val state = factory.createStateDeclaration(StringIdentifier(event.name))
            basicFbType.ecc.states += state
            val startToState = factory.createStateTransition()
            basicFbType.ecc.transitions += startToState
            startToState.condition.setGuardCondition(stFactoryUtils.intEquality(parameterInput, i))
            startToState.sourceReference.setTarget(start)
            startToState.targetReference.setTarget(state)

            val equality = stFactory.createBinaryExpression(BinaryOperation.EQ)
            val numberLiteral = stFactory.createLiteral(LiteralKind.DEC_INT) as Literal<Int?>
            numberLiteral.value = i
            equality.rightExpression = numberLiteral
            val variableReference = stFactory.createVariableReference()
            variableReference.reference.setTarget(parameterInput)
            equality.leftExpression = variableReference

            val stateToStart = factory.createStateTransition()
            basicFbType.ecc.transitions += stateToStart
            stateToStart.sourceReference.setTarget(state)
            stateToStart.targetReference.setTarget(start)

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
    ): FBTypeDeclaration = publishSubscribeProvider?.invoke(nodeName) ?: owner.adapter(
        ModelImports(currentModel).importedModels
            .first { it.modelName == "iec61499.4diac.stdlib" }
            .resolve(owner.mpsRepository)
            .rootNodes
            .first { it.name == nodeName }
    )

    private fun createCompositeFB(
        name: String,
        leftAdapter: AdapterTypeDeclaration,
        rightAdapter: AdapterTypeDeclaration,
        network: FBNetwork,
    ): CompositeFBTypeDeclaration {
        val composite = factory.createCompositeFBTypeDeclaration(StringIdentifier(name))

        val plug = factory.createPlugDeclaration(rightAdapter.identifier)
        plug.typeReference.setTarget(rightAdapter)
        plug.name = "Plug_Connection"
        composite.plugs += plug

        val socket = factory.createSocketDeclaration(leftAdapter.identifier)
        socket.typeReference.setTarget(leftAdapter)
        socket.name = "Socket_Connection"
        composite.sockets += socket

        // add port connections
        composite.network.copyElements(network)
        return composite
    }
}

fun SModel.addRootNodes(
    vararg declarations: Declaration?,
    virtualPackage: String? = null,
) {
    val distinctDeclarations = declarations.associateBy { it?.name }
    rootNodes.filter { distinctDeclarations[it.name] != null }
        .forEach { removeRootNode(it) }

    for (declaration in distinctDeclarations.values) {
        if (declaration == null) {
            continue
        }
        val node = (declaration as PlatformElement).node
        if (!virtualPackage.isNullOrEmpty()) {
            node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
        }
        addRootNode(node)
    }
}
