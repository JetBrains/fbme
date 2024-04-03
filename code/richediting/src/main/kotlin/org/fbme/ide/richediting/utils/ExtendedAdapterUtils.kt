package org.fbme.ide.richediting.utils

import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SNodeUtil
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.model.SModel


class ExtendedAdapterUtils(
    private val factory: IEC61499Factory,
    private val stFactory: STFactory,
    private val project: MPSProject,
) {
    private val switchGenerator = SwitchGenerator(factory, stFactory)
    private val owner = PlatformRepositoryProvider.getInstance(project)
    private val declarationsScope = owner.declarationsScope

    companion object {
        fun isExtendedAdapterConnection(connection: FBNetworkConnection) =
            getExtendedAdapterType(connection) != null

        fun getExtendedAdapterType(connection: FBNetworkConnection) =
            getSourceAdapterDeclaration(connection) as? ExtendedAdapterTypeDeclaration

        fun getExtendedAdapterType(declaration: Declaration?) =
            getSourceAdapterDeclaration(declaration) as? ExtendedAdapterTypeDeclaration

        fun getSourceAdapterDeclaration(connection: FBNetworkConnection) =
            getSourceAdapterDeclaration(connection.sourceReference.getTarget()?.portTarget)

        fun getSourceAdapterDeclaration(declaration: Declaration?) =
            (declaration as? PlugDeclaration)?.typeReference?.getTarget()
    }

    data class RevealDeclarationsResult(
        val extendedAdapter: ExtendedAdapterTypeDeclaration,
        val leftAdapter: AdapterTypeDeclaration,
        val middleAdapter: AdapterTypeDeclaration?,
        val rightAdapter: AdapterTypeDeclaration?,
        val leftBlockDeclaration: CompositeFBTypeDeclaration,
        val rightBlockDeclaration: CompositeFBTypeDeclaration?,
        val routers: MutableMap<Int, CompositeFBTypeDeclaration>,
    ) {
        fun getFarRightAdapter(): AdapterTypeDeclaration = rightAdapter ?: middleAdapter ?: leftAdapter
    }

    fun revealAdapter(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        currentModel: SModel,
    ): RevealDeclarationsResult {
        val revealDeclarations = revealDeclarations(extendedAdapter, currentModel)
        val declarationsResults = listOf(revealDeclarations)
        val identifiersToRevealResult =
            declarationsResults.associateBy { it.extendedAdapter.identifier }

        revealAdapterInNetwork(
            currentModel = currentModel,
            modelToCheck = currentModel,
            identifiersToRevealResult = identifiersToRevealResult,
        )
        return revealDeclarations
    }

    private fun revealAdapterInAllNetworks(
        currentModel: SModel,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>
    ) {
        for (module in currentModel.repository.modules) {
            for (model in module.models) {
                revealAdapterInNetwork(
                    currentModel = currentModel,
                    modelToCheck = model,
                    identifiersToRevealResult = identifiersToRevealResult
                )
            }
        }
    }

    private fun revealAdapterInNetwork(
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
                        it.typeReference.setTarget(revealDeclarationsResult.leftAdapter)
                    }
                }
            }
        }
        for (node in rootNodes) {
            val declarationWithNetwork = owner.adapterOrNull<DeclarationWithNetwork>(node)
            if (declarationWithNetwork != null) {
                val sourceIdentifiersToRevealResult =
                    identifiersToRevealResult.mapKeys { it.value.leftAdapter.identifier }
                revealExtendedAdaptersInNetwork(
                    network = declarationWithNetwork.network,
                    identifiersToRevealResult = sourceIdentifiersToRevealResult,
                    model = currentModel,
                )
            }
        }
    }

    private fun revealDeclarations(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        model: SModel,
    ): RevealDeclarationsResult {
        val name = extendedAdapter.name
        val adapterGenerator = AdapterGenerator(factory)
        val leftAdapter = adapterGenerator.generateAdapterFromDescriptor(
            name = "Left_$name",
            fbTypeDescriptor = extendedAdapter.plugTypeDescriptor,
            reversed = true,
        )
        val middleAdapter = adapterGenerator.generateAdapterFromDeclaration(
            name = "Middle_$name",
            identifier = extendedAdapter.identifier,
            declaration = extendedAdapter,
        )
        val rightAdapter = adapterGenerator.generateAdapterFromDescriptor(
            name = "Right_$name",
            fbTypeDescriptor = extendedAdapter.socketTypeDescriptor,
        )

        val block = createCompositeFB(factory, "InternalFB_$name", leftAdapter, rightAdapter, extendedAdapter.network)
        //        val leftBlock = createCompositeFB(factory, name, leftAdapter, middleAdapter, extendedAdapter.network)
        //        val rightBlock = createCompositeFB(factory, name, middleAdapter, rightAdapter, extendedAdapter.rightNetwork)
        model.addRootNodes(leftAdapter, middleAdapter, rightAdapter, block, virtualPackage = "generated")
        return RevealDeclarationsResult(
            extendedAdapter = extendedAdapter,
            leftAdapter = leftAdapter,
            middleAdapter = middleAdapter,
            rightAdapter = rightAdapter,
            leftBlockDeclaration = block,
            rightBlockDeclaration = null,
            routers = mutableMapOf(),
        )
    }

    private fun revealExtendedAdaptersInNetwork(
        network: FBNetwork,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>,
        model: SModel,
    ) {
        val adapterConnections = network.adapterConnections
            .filter { getSourceAdapterDeclaration(it)?.identifier in identifiersToRevealResult }
            .mapNotNull { connection -> (connection.sourceReference.getTarget())?.let { it to connection } }
            .groupBy({ it.first }, { it.second })
        network.adapterConnections.removeIf { it.sourceReference.getTarget() in adapterConnections }

        for ((sourcePort, connections) in adapterConnections) {
            val plugAdapterIdentifier = getSourceAdapterDeclaration(sourcePort.portTarget)?.identifier
            val revealResult = identifiersToRevealResult[plugAdapterIdentifier]
            checkNotNull(revealResult)
            val adapterType = revealResult.extendedAdapter
            if (connections.isEmpty()) {
                continue
            }
            val routerDeclaration = if (connections.size == 1) {
                null
            } else {
                revealResult.routers.computeIfAbsent(connections.size) {
                    val outputRouter = adapterType.outputRouter
                        ?: throw IllegalStateException("Adapter ${adapterType.name} doesn't have routing field")
                    switchGenerator.generateRouter(
                        name = "${adapterType.name}_${connections.size}",
                        model = model,
                        adapterTypeDeclaration = revealResult.leftAdapter,
                        outputsCount = connections.size,
                        routerName = outputRouter.name,
                        virtualPackage = "generated",
                    )
                }
            }
            // plugBlock -> leftBlock -> [router ->] [rightBlock ->] socketBlock

            val leftBlock = addFunctionalBlock(revealResult.leftBlockDeclaration, network)
            network.adapterConnections += createConnection(
                source = sourcePort,
                target = leftBlock.getPort(leftBlock.type.socketPorts.first()),
                entryKind = EntryKind.ADAPTER,
            )

            val blockBeforeRightBlock = if (routerDeclaration == null) {
                leftBlock
            } else {
                val routerBlock = addFunctionalBlock(routerDeclaration, network)
                network.adapterConnections += createConnection(
                    source = leftBlock.getPort(leftBlock.type.plugPorts.first()),
                    target = routerBlock.getPort(routerBlock.type.socketPorts.first()),
                    entryKind = EntryKind.ADAPTER,
                )
                routerBlock
            }

            for ((connection, connectionSourcePort) in connections
                .zip(blockBeforeRightBlock.type.plugPorts.map { blockBeforeRightBlock.getPort(it) })) {
                val portBeforeSocketBlock = if (revealResult.rightBlockDeclaration == null) {
                    connectionSourcePort
                } else {
                    val addedBlock = addFunctionalBlock(revealResult.rightBlockDeclaration, network)
                    network.adapterConnections += createConnection(
                        source = connectionSourcePort,
                        target = addedBlock.getPort(addedBlock.type.socketPorts.first()),
                        entryKind = EntryKind.ADAPTER,
                    )
                    addedBlock.getPort(addedBlock.type.plugPorts.first())
                }

                network.adapterConnections += createConnection(
                    source = portBeforeSocketBlock,
                    target = checkNotNull(connection.targetReference.getTarget()),
                    entryKind = EntryKind.ADAPTER,
                )
            }
        }
    }

    private fun addBlockOrElseSource(
        blockToAdd: CompositeFBTypeDeclaration?,
        network: FBNetwork,
        sourcePort: PortPath<out Declaration>,
    ) = if (blockToAdd != null) {
        val addedBlock = addFunctionalBlock(blockToAdd, network)
        network.adapterConnections += createConnection(
            source = sourcePort,
            target = addedBlock.getPort(addedBlock.type.socketPorts.first()),
            entryKind = EntryKind.ADAPTER,
        )
        addedBlock.getPort(addedBlock.type.plugPorts.first())
    } else {
        sourcePort
    }

    private fun addFunctionalBlock(
        source: FunctionBlockDeclaration,
        target: FunctionBlockDeclaration,
        network: FBNetwork,
    ) {
        val outputEvents = source.typeReference.getTarget()?.outputEvents
        if (outputEvents == null) {
            return
        }
        for ((eventDeclaration, eventPort) in outputEvents.zip(source.type.eventOutputPorts)) {
            val size = eventDeclaration.associations.size
            if (size > 10) {
                throw IllegalArgumentException("Size more than 10")
            }
            val identifier = StringIdentifier("PUBLISH_$size")
            val typeDeclaration = declarationsScope.findServiceFBTypeDeclaration(identifier)
                ?: throw IllegalStateException("${identifier.value} block not found")
            val block = factory.createFunctionBlockDeclaration(identifier)
            block.name = "${eventDeclaration.name}c"
            block.typeReference.setTarget(typeDeclaration)

            createConnection(
                source = source.getPort(eventPort),
                target = block.getPort(typeDeclaration.typeDescriptor.eventInputPorts.first { it.name == "REQ" }),
                entryKind = EntryKind.EVENT,
            )
            for (i in eventDeclaration.associations.indices) {
                val association = eventDeclaration.associations[i]
                val parameter = association.parameterReference.getTarget()
                checkNotNull(parameter)
                createConnection(
                    source = source.getPort(source.type.dataOutputPorts.first { it.name == parameter.name }),
                    target = block.getPort(typeDeclaration.typeDescriptor.dataInputPorts.first { it.name == "SD_${i + 1}" }),
                    entryKind = EntryKind.DATA,
                )
            }
            network.functionBlocks += block
        }
        val inputEvents = source.typeReference.getTarget()?.inputEvents
        if (inputEvents == null) {
            return
        }
        for ((eventDeclaration, eventPort) in inputEvents.zip(source.type.eventInputPorts)) {
            val size = eventDeclaration.associations.size
            if (size > 10) {
                throw IllegalArgumentException("Size more than 10")
            }
            val identifier = StringIdentifier("SUBSCRIBE_$size")
            val typeDeclaration = declarationsScope.findServiceFBTypeDeclaration(identifier)
                ?: throw IllegalStateException("${identifier.value} block not found")
            val block = factory.createFunctionBlockDeclaration(identifier)
            block.name = "${eventDeclaration.name}c"
            block.typeReference.setTarget(typeDeclaration)

            createConnection(
                source = source.getPort(eventPort),
                target = block.getPort(typeDeclaration.typeDescriptor.eventInputPorts.first { it.name == "IND" }),
                entryKind = EntryKind.EVENT,
            )
            for (i in eventDeclaration.associations.indices) {
                val association = eventDeclaration.associations[i]
                val parameter = association.parameterReference.getTarget()
                checkNotNull(parameter)
                createConnection(
                    source = source.getPort(source.type.dataOutputPorts.first { it.name == parameter.name }),
                    target = block.getPort(typeDeclaration.typeDescriptor.dataInputPorts.first { it.name == "RD_${i + 1}" }),
                    entryKind = EntryKind.DATA,
                )
            }
            network.functionBlocks += block
        }
    }

    private fun addFunctionalBlock(
        blockType: CompositeFBTypeDeclaration,
        network: FBNetwork,
    ): FunctionBlockDeclaration {
        val block = factory.createFunctionBlockDeclaration(blockType.identifier)
        block.name = blockType.name
        block.typeReference.setTarget(blockType)
        network.functionBlocks += block
        return block
    }

    private fun createConnection(
        source: PortPath<*>,
        target: PortPath<*>,
        entryKind: EntryKind,
    ): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(entryKind)
        connection.sourceReference.setTarget(source)
        connection.targetReference.setTarget(target)
        return connection
    }

    private fun createCompositeFB(
        factory: IEC61499Factory,
        name: String,
        leftAdapter: AdapterTypeDeclaration,
        rightAdapter: AdapterTypeDeclaration,
        network: FBNetwork,
    ): CompositeFBTypeDeclaration {
        val composite = factory.createCompositeFBTypeDeclaration(StringIdentifier(name))

        val plug = factory.createPlugDeclaration(rightAdapter.identifier)
        plug.typeReference.setTarget(rightAdapter)
        plug.name = "Plug Connection"
        composite.plugs += plug

        val socket = factory.createSocketDeclaration(leftAdapter.identifier)
        socket.typeReference.setTarget(leftAdapter)
        socket.name = "Socket Connection"
        composite.sockets += socket

        // add port connections
        composite.network.copyElements(network)
        return composite
    }

}

fun SModel.addRootNodes(
    vararg declarations: Declaration,
    virtualPackage: String? = null,
) {
    for (declaration in declarations) {
        val node = (declaration as PlatformElement).node
        if (!virtualPackage.isNullOrEmpty()) {
            node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
        }
        addRootNode(node)
    }
}
