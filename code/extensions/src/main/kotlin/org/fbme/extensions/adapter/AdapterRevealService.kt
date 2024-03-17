package org.fbme.extensions.adapter

import org.fbme.extensions.utils.IEC61499FactoryUtils
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceFunctionBlockHierarchy
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.model.SModel

class AdapterRevealService(
    factory: IEC61499Factory,
    stFactory: STFactory,
    private val owner: PlatformRepository,
    publishSubscribeProvider: ((name: String) -> FBTypeDeclaration)? = null,
): AdapterRevealApi {
    private val extendedAdapterUtils: ExtendedAdapterUtils =
        ExtendedAdapterUtils(factory, stFactory, owner, publishSubscribeProvider)
    private val factoryUtils: IEC61499FactoryUtils = IEC61499FactoryUtils(factory)

    override fun revealAdapter(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        currentModel: SModel,
        removeAdapter: Boolean,
    ): RevealDeclarationsResult {
        val revealDeclarations = extendedAdapterUtils.createDeclarations(extendedAdapter, currentModel)
        val declarationsResults = listOf(revealDeclarations)
        val identifiersToRevealResult =
            declarationsResults.associateBy { it.extendedAdapter.identifier }

        revealAdapters(
            modelToGenerateNodesIn = currentModel,
            modelToCheck = currentModel,
            identifiersToRevealResult = identifiersToRevealResult,
        )
        if (!removeAdapter) {
            return revealDeclarations
        }
        for (revealResult in declarationsResults) {
            val node = (revealResult.extendedAdapter as? PlatformElement)?.node
            if (node != null) {
                currentModel.removeRootNode(node)
            }
        }
        return revealDeclarations
    }

    fun revealAdapterWithNetBlocks(
        revealResult: RevealDeclarationsResult,
        block: FunctionBlockDeclaration,
        port: FBPortDescriptor,
        count: Int,
        model: SModel,
    )  = extendedAdapterUtils.revealAdapterWithNetBlocks(revealResult, block, port, count, model)

    override fun revealAllAdapters(currentModel: SModel) {
        val identifiersToRevealResult = hashMapOf<Identifier, RevealDeclarationsResult>()
        for (module in currentModel.repository.modules) {
            for (model in module.models) {
                for (node in model.rootNodes) {
                    if (node is ExtendedAdapterTypeDeclaration) {
                        identifiersToRevealResult[node.identifier] = extendedAdapterUtils.createDeclarations(node, currentModel)
                    }
                }
            }
        }
        for (module in currentModel.repository.modules) {
            for (model in module.models) {
                revealAdapters(
                    modelToGenerateNodesIn = currentModel,
                    modelToCheck = model,
                    identifiersToRevealResult = identifiersToRevealResult
                )
            }
        }
    }

    private fun revealAdapters(
        modelToGenerateNodesIn: SModel,
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
                extendedAdapterUtils.revealExtendedAdaptersInNetwork(
                    network = declarationWithNetwork.network,
                    identifiersToRevealResult = sourceIdentifiersToRevealResult,
                    model = modelToGenerateNodesIn,
                    withPublishSubscribe = false,
                )
            }
        }
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
        model: SModel?,
    ): RevealDeclarationsResult = extendedAdapterUtils.createDeclarations(extendedAdapter, model)
}
