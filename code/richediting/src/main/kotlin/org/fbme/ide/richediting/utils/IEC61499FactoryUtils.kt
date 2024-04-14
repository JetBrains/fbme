package org.fbme.ide.richediting.utils

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.*

class IEC61499FactoryUtils(
    private val factory: IEC61499Factory,
) {
    fun createNetworkConnection(
        kind: EntryKind,
        source: FunctionBlockDeclarationBase?,
        sourcePortTarget: Declaration,
        target: FunctionBlockDeclarationBase?,
        targetPortTarget: Declaration,
    ): FBNetworkConnection = createConnection(
        source = PortPath.createPortPath(source, kind, sourcePortTarget),
        target = PortPath.createPortPath(target, kind, targetPortTarget),
        entryKind = kind,
    )

    fun createConnection(
        source: PortPath<*>,
        target: PortPath<*>,
        entryKind: EntryKind,
    ): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(entryKind)
        connection.sourceReference.setTarget(source)
        connection.targetReference.setTarget(target)
        return connection
    }

    fun addFunctionalBlock(
        blockType: FBTypeDeclaration,
        network: FBNetwork,
        name: String? = null,
    ): FunctionBlockDeclaration {
        val block = factory.createFunctionBlockDeclaration(blockType.identifier)
        block.name = name ?: blockType.name
        block.typeReference.setTarget(blockType)
        network.functionBlocks += block
        return block
    }

    fun copyEventsAndConnect(
        destination: MutableList<EventDeclaration>,
        destinationBlock: FunctionBlockDeclarationBase?,
        source: List<EventDeclaration>,
        sourceBlock: FunctionBlockDeclarationBase?,
        network: FBNetwork,
        outputToInput: Boolean = true,
    ): List<Pair<EventDeclaration, EventDeclaration>> {
        val eventsAndCopies = source.map {
            it to it.copy() as EventDeclaration
        }
        destination += eventsAndCopies.map { it.second }

        network.eventConnections += eventsAndCopies.map {
            if (outputToInput) {
                createNetworkConnection(
                    kind = EntryKind.EVENT,
                    source = sourceBlock,
                    sourcePortTarget = it.first,
                    target = destinationBlock,
                    targetPortTarget = it.second,
                )
            } else {
                createNetworkConnection(
                    kind = EntryKind.EVENT,
                    source = destinationBlock,
                    sourcePortTarget = it.second,
                    target = sourceBlock,
                    targetPortTarget = it.first,
                )
            }
        }
        return eventsAndCopies
    }

    fun copyParametersAndConnect(
        destination: MutableList<ParameterDeclaration>,
        destinationBlock: FunctionBlockDeclarationBase?,
        source: List<ParameterDeclaration>,
        sourceBlock: FunctionBlockDeclarationBase?,
        network: FBNetwork,
        outputToInput: Boolean = true,
    ): List<Pair<ParameterDeclaration, ParameterDeclaration>> {
        val inputsAndCopies = source.map {
            it to it.copy() as ParameterDeclaration
        }
        destination += inputsAndCopies.map { it.second }

        network.dataConnections += inputsAndCopies.map {
            if (outputToInput) {
                createNetworkConnection(
                    kind = EntryKind.DATA,
                    source = sourceBlock,
                    sourcePortTarget = it.first,
                    target = destinationBlock,
                    targetPortTarget = it.second,
                )
            } else {
                createNetworkConnection(
                    kind = EntryKind.DATA,
                    source = destinationBlock,
                    sourcePortTarget = it.second,
                    target = sourceBlock,
                    targetPortTarget = it.first,
                )
            }
        }
        return inputsAndCopies
    }
}