package org.fbme.extensions.adapter

import org.fbme.extensions.utils.IEC61499FactoryUtils
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceFunctionBlockHierarchy
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode

class AdapterRevealService(
    private val owner: PlatformRepository,
    publishSubscribeProvider: ((name: String) -> FBTypeDeclaration)? = null,
): AdapterRevealApi {
    private val extendedAdapterUtils: ExtendedAdapterUtils
    private val factoryUtils: IEC61499FactoryUtils

    init {
        val stFactory: STFactory = owner.stFactory
        val factory: IEC61499Factory = owner.iec61499Factory
        extendedAdapterUtils = ExtendedAdapterUtils(factory, stFactory, owner, publishSubscribeProvider)
        factoryUtils = IEC61499FactoryUtils(factory)
    }


    override fun revealAdapter(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        model: SModel,
        removeAdapter: Boolean,
    ): RevealDeclarationsResult {
        val revealDeclarations = extendedAdapterUtils.createDeclarations(extendedAdapter, model)
        val declarationsResults = listOf(revealDeclarations)
        val identifiersToRevealResult =
            declarationsResults.associateBy { it.extendedAdapter.identifier }

        revealAdapters(
            model = model,
            identifiersToRevealResult = identifiersToRevealResult,
        )
        if (removeAdapter) {
            removeExtendedAdapters(declarationsResults, model)
        }
        return revealDeclarations
    }

    private fun removeExtendedAdapters(
        declarationsResults: Collection<RevealDeclarationsResult>,
        currentModel: SModel
    ) {
        for (revealResult in declarationsResults) {
            val node = (revealResult.extendedAdapter as? PlatformElement)?.node
            if (node != null) {
                currentModel.removeRootNode(node)
            }
        }
    }

    fun revealAdapterWithNetBlocks(
        revealResult: RevealDeclarationsResult,
        block: FunctionBlockDeclaration,
        port: FBPortDescriptor,
        count: Int,
        model: SModel,
    )  = extendedAdapterUtils.revealAdapterWithNetBlocks(revealResult, block, port, count, model)

    override fun revealModel(model: SModel) {
        val identifiersToRevealResult = hashMapOf<Identifier, RevealDeclarationsResult>()
        val rootNodes = model.rootNodes.toList()
        for (node in rootNodes) {
            val adapter = owner.adapterOrNull<ExtendedAdapterTypeDeclaration>(node)
            if (adapter != null) {
                identifiersToRevealResult[adapter.identifier] = extendedAdapterUtils.createDeclarations(adapter, model)
            }
        }
        revealAdapters(
            model = model,
            identifiersToRevealResult = identifiersToRevealResult
        )
        removeExtendedAdapters(identifiersToRevealResult.values, model)
    }

    private fun revealAdapters(
        model: SModel,
        identifiersToRevealResult: Map<Identifier, RevealDeclarationsResult>
    ) {
        val rootNodes = model.rootNodes.toList()
        for (node in rootNodes) {
            val fbTypeDeclaration = owner.adapterOrNull<FBTypeDeclaration>(node) ?: continue
            extendedAdapterUtils.changeBlockPorts(fbTypeDeclaration, identifiersToRevealResult)
        }
        for (node in rootNodes) {
            val networks = getNetworks(node) ?: continue
            for (network in networks) {
                val sourceIdentifiersToRevealResult =
                    identifiersToRevealResult.mapKeys { it.value.getFarLeftAdapter().identifier }
                extendedAdapterUtils.revealExtendedAdaptersInNetwork(
                    network = network,
                    identifiersToRevealResult = sourceIdentifiersToRevealResult,
                    model = model,
                    withPublishSubscribe = false,
                )
            }
        }
    }

    private fun getNetworks(node: SNode): List<FBNetwork>? =
        when (val declaration = owner.adapterOrNull<Declaration>(node)) {
            is DeclarationWithNetwork -> listOf(declaration.network)
            is ExtendedAdapterTypeDeclaration ->
                listOfNotNull(declaration.leftNetwork?.network, declaration.rightNetwork?.network)
            is SystemDeclaration -> declaration.applications.map { it.network } +
                    declaration.devices.flatMap { device -> device.resources.map { it.network } }
            else -> null
        }

    override fun syncApplicationResources(
        systemDeclaration: SystemDeclaration,
        model: SModel,
    ) {
        val applicationBlockToMapping: Map<FunctionBlockDeclarationBase, ResourceFunctionBlockHierarchy> =
            systemDeclaration.mappings.asSequence()
                .mapNotNull { mapping ->
                    val functionBlock = mapping.applicationFBReference.getTarget()?.functionBlock
                    val resource = mapping.resourceFBReference.getTarget()
                    if (functionBlock != null && resource != null) {
                        functionBlock to resource
                    } else {
                        null
                    }
                }
                .associate { it }
        val revealDeclarationsResults = mutableMapOf<String, RevealDeclarationsResult>()
        for (application in systemDeclaration.applications) {
            val adapterConnections = application.network.adapterConnections.asSequence()
                .filter { ExtendedAdapterUtils.isExtendedAdapterConnection(it) }
                .mapNotNull { connection -> (connection.sourceReference.getTarget())?.let { it to connection } }
                .groupBy({ it.first }, { it.second })
            for ((plug, connections) in adapterConnections) {
                val adapterType = ExtendedAdapterUtils.getPlugExtendedAdapterType(plug.portTarget) ?: continue
                val sourceResource = applicationBlockToMapping[plug.functionBlock] ?: continue
                val sourceBlockInResource = sourceResource.functionBlock ?: continue
                val plugPort = sourceBlockInResource.type.plugPorts.first { it.name == plug.portTarget.name }
                val sourceResourceNetwork = sourceResource.resourceHierarchy.resource.network
                val needReveal = sourceResourceNetwork.adapterConnections.none {
                    it.sourceReference.getTarget()?.functionBlock == sourceBlockInResource &&
                            it.sourceReference.getTarget()?.portTarget == plugPort.declaration
                } && connections.any { connection ->
                    val socket = connection.targetReference.getTarget()
                    sourceResource != applicationBlockToMapping[socket?.functionBlock]
                }
                if (needReveal) {
                    val revealDeclarationsResult = revealDeclarationsResults.computeIfAbsent(adapterType.name) {
                        extendedAdapterUtils.createDeclarations(adapterType, model)
                    }
                    extendedAdapterUtils.revealAdapterWithNetBlocks(
                        revealResult = revealDeclarationsResult,
                        block = sourceBlockInResource,
                        port = plugPort,
                        count = connections.size,
                        model = model,
                    )
                }
                for (connection in connections) {
                    val socket = connection.targetReference.getTarget() ?: continue
                    val targetResource = applicationBlockToMapping[socket.functionBlock] ?: continue
                    val targetBlockInResource = targetResource.functionBlock ?: continue
                    val socketPort = targetBlockInResource.type.socketPorts.first { it.name == socket.portTarget.name }
                    val targetResourceNetwork = targetResource.resourceHierarchy.resource.network
                    val connectionExists = targetResourceNetwork.adapterConnections.any {
                        it.targetReference.getTarget()?.functionBlock == targetBlockInResource &&
                                it.targetReference.getTarget()?.portTarget == socketPort.declaration
                    }
                    if (!connectionExists) {
                        if (sourceResource == targetResource) {
                            targetResourceNetwork.adapterConnections += factoryUtils.createConnection(
                                source = sourceBlockInResource.getPort(plugPort),
                                target = targetBlockInResource.getPort(socketPort),
                                entryKind = EntryKind.ADAPTER,
                            )
                            continue
                        }
                        val revealDeclarationsResult = revealDeclarationsResults.computeIfAbsent(adapterType.name) {
                            extendedAdapterUtils.createDeclarations(adapterType, model)
                        }
                        extendedAdapterUtils.revealAdapterWithNetBlocks(
                            revealResult = revealDeclarationsResult,
                            block = targetBlockInResource,
                            port = socketPort,
                            count = connections.size,
                            model = model,
                        )
                    }
                }

            }
        }
    }

    fun revealDeclarations(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        model: SModel,
    ): RevealDeclarationsResult = extendedAdapterUtils.createDeclarations(extendedAdapter, model)
}
