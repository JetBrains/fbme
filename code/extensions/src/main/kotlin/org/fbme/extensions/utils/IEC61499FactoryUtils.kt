package org.fbme.extensions.utils

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.EventAssociation
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.st.expressions.Expression

class IEC61499FactoryUtils(
    private val factory: IEC61499Factory,
) {
    fun createStateTransition(
        source: StateDeclaration,
        target: StateDeclaration,
        eventCondition: EventDeclaration? = null,
        condition: Expression? = null,
    ): StateTransition {
        val transition = factory.createStateTransition()
        transition.sourceReference.setTarget(source)
        transition.targetReference.setTarget(target)
        if (eventCondition != null) {
            transition.condition.eventReference.setFQName(eventCondition.name)
        }
        if (condition != null) {
            transition.condition.setGuardCondition(condition)
        }
        return transition
    }

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

    fun createAssociation(
        declaration: ParameterDeclaration,
    ): EventAssociation {
        val eventAssociation = factory.createEventAssociation()
        eventAssociation.parameterReference.setTarget(declaration)
        return eventAssociation
    }

    fun addFunctionalBlock(
        blockType: FBTypeDeclaration,
        network: FBNetwork,
        name: String? = null,
    ): FunctionBlockDeclaration {
        val block = factory.createFunctionBlockDeclaration(blockType.identifier)
        block.name = getUnusedName(
            name ?: blockType.name,
            network.functionBlocks.asSequence().map { it.name }.toSet()
        )
        block.typeReference.setTarget(blockType)
        network.functionBlocks += block
        return block
    }

    private fun getUnusedName(name: String, usedNames: Set<String>): String = if (name in usedNames) {
        getUnusedName(name, usedNames, 2)
    } else {
        name
    }

    private fun getUnusedName(name: String, usedNames: Set<String>, id: Int): String {
        val nextName = "${name}_$id"
        return if (nextName in usedNames) {
            getUnusedName(name, usedNames, id + 1)
        } else {
            nextName
        }
    }

    fun copyEventsAndConnect(
        destination: MutableList<EventDeclaration>,
        destinationBlock: FunctionBlockDeclarationBase?,
        sources: List<EventDeclaration>,
        sourceBlock: FunctionBlockDeclarationBase?,
        network: FBNetwork,
        outputToInput: Boolean = true,
        keepAssociations: Boolean = false,
    ): List<Pair<EventDeclaration, EventDeclaration>> {
        val eventsAndCopies = sources.map { source ->
            val copy = source.copy() as EventDeclaration
            if (!keepAssociations) {
                copy.associations.clear()
            }
            source to copy
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