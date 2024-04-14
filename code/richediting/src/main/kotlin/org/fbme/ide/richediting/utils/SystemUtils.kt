package org.fbme.ide.richediting.utils

import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceFunctionBlockHierarchy
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.model.SModel

class SystemUtils(
    factory: IEC61499Factory,
    stFactory: STFactory,
    owner: PlatformRepository,
) {
    private val factoryUtils: IEC61499FactoryUtils = IEC61499FactoryUtils(factory)
    private val extendedAdapterUtils = ExtendedAdapterUtils(factory, stFactory, owner)

    fun syncApplicationResources(
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
        val revealDeclarationsResults = mutableMapOf<String, ExtendedAdapterUtils.RevealDeclarationsResult>()
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
                        extendedAdapterUtils.revealDeclarations(adapterType, model)
                    }
                    extendedAdapterUtils.revealAdapterWithNet(
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
                            extendedAdapterUtils.revealDeclarations(adapterType, model)
                        }
                        extendedAdapterUtils.revealAdapterWithNet(
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
}