package org.fbme.ide.richediting.actions

import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.*
import org.jetbrains.mps.openapi.model.SModel

class SwitchGenerator(
    private val factory: IEC61499Factory,
    private val stFactory: STFactory,
) {
    private val createdEvents = mutableListOf<EventCopyAndConnectObject>()
    private val createdParams = mutableListOf<ParameterCopyAndConnectObject>()

    private data class EventCopyAndConnectObject(
        val sourceEvent: EventDeclaration,
        val createdEvent: EventDeclaration,
        val input: Boolean,
        val source: FunctionBlockDeclarationBase?,
        val target: FunctionBlockDeclarationBase?,
    )

    private data class ParameterCopyAndConnectObject(
        val sourceParam: ParameterDeclaration,
        val createdParam: ParameterDeclaration,
        val input: Boolean,
        val source: FunctionBlockDeclarationBase?,
        val target: FunctionBlockDeclarationBase?,
    )

    fun addSocketPlugsSwitch(
        adapterName: String,
        model: SModel,
        root: CompositeFBTypeDeclaration,
        socket: SocketDeclaration,
        plugs: List<PlugDeclaration>,
        socketToPlug: Boolean,
        routerName: String,
    ): FunctionBlockDeclaration {
        createdEvents.clear()
        createdParams.clear()

        val switchFBIdentifier = StringIdentifier(adapterName)
        val switchDeclaration = factory.createBasicFBTypeDeclaration(switchFBIdentifier)
        val switchBlock = factory.createFunctionBlockDeclaration(switchFBIdentifier)
        switchBlock.typeReference.setTarget(switchDeclaration)

        val socketAdapterType = checkNotNull(socket.typeReference.getTarget())
        val eventsToCopy = if (socketToPlug) socketAdapterType.outputEvents else socketAdapterType.inputEvents
        val paramsToCopy =
            (if (socketToPlug) socketAdapterType.outputParameters else socketAdapterType.inputParameters)
//                    .filter { it.name != routerName }
        createConnections(
            sourceEvents = eventsToCopy,
            sourceParameters = paramsToCopy,
            switchType = switchDeclaration,
            sourceBlockDeclaration = socket,
            targetBlockDeclaration = switchBlock,
            input = socketToPlug,
        )
        for (i in plugs.indices) {
            val plugDeclaration = plugs[i]
            createConnections(
                sourceEvents = eventsToCopy,
                sourceParameters = paramsToCopy,
                switchType = switchDeclaration,
                sourceBlockDeclaration = plugDeclaration,
                targetBlockDeclaration = switchBlock,
                input = !socketToPlug,
                nameSuffix = "_$i",
            )
        }
        configureEcc(
            switchDeclaration = switchDeclaration,
            eventDeclarations = createdEvents.groupBy { it.sourceEvent.name }
                .flatMap { (_, value) ->
                    val (inputs, outputs) = value.partition { it.input }
                    inputs.map { input -> input.createdEvent to outputs.map { it.createdEvent } }
                },
            parameterDeclarations = createdParams.map { it.sourceParam to it.createdParam },
            createdParams.firstOrNull { it.sourceParam.name == routerName }?.sourceParam,
        )

        model.addRootNode((switchDeclaration as PlatformElement).node)
        root.network.functionBlocks.add(switchBlock)
        createdEvents.asSequence()
            .map { it.toNetworkConnection() }
            .toCollection(root.network.eventConnections)
        createdParams.asSequence()
            .map { it.toNetworkConnection() }
            .toCollection(root.network.dataConnections)

        return switchBlock
    }

    private fun createConnections(
        sourceEvents: List<EventDeclaration>,
        sourceParameters: List<ParameterDeclaration>,
        switchType: BasicFBTypeDeclaration,
        sourceBlockDeclaration: FunctionBlockDeclarationBase?,
        targetBlockDeclaration: FunctionBlockDeclarationBase?,
        input: Boolean,
        nameSuffix: String? = null,
    ) {
        val nameToParameterDeclaration = sourceParameters.associate { sourceDeclaration ->
            val newDeclaration = sourceDeclaration.copy(nameSuffix = nameSuffix)
            sourceDeclaration.name to ParameterCopyAndConnectObject(
                sourceParam = sourceDeclaration,
                createdParam = newDeclaration,
                input = input,
                source = sourceBlockDeclaration,
                target = targetBlockDeclaration,
            )
        }
        val nameToCreatedParameterDeclaration = nameToParameterDeclaration.mapValues { it.value.createdParam }
        val newEventDeclarations = sourceEvents.map { eventDeclaration ->
            val newDeclaration = eventDeclaration.copy(
                nameSuffix = nameSuffix,
                nameToParameterDeclaration = nameToCreatedParameterDeclaration
            )
            EventCopyAndConnectObject(
                sourceEvent = eventDeclaration,
                createdEvent = newDeclaration,
                input = input,
                source = sourceBlockDeclaration,
                target = targetBlockDeclaration,
            )
        }
        createdEvents.addAll(newEventDeclarations)
        createdParams.addAll(nameToParameterDeclaration.values)
        val eventDeclarations = if (input) switchType.inputEvents else switchType.outputEvents
        eventDeclarations.addAll(newEventDeclarations.map { it.createdEvent })
        val paramsDeclarations = if (input) switchType.inputParameters else switchType.outputParameters
        paramsDeclarations.addAll(nameToCreatedParameterDeclaration.values)
    }

    private fun configureEcc(
        switchDeclaration: BasicFBTypeDeclaration,
        eventDeclarations: List<Pair<EventDeclaration, List<EventDeclaration>>>,
        parameterDeclarations: List<Pair<ParameterDeclaration, ParameterDeclaration>>,
        routerParameterDeclaration: ParameterDeclaration?,
    ) {
        val startState = factory.createStateDeclaration(StringIdentifier("Start"))
        switchDeclaration.ecc.states.add(startState)
        for (i in eventDeclarations.indices) {
            val (inputEvent, outputEvents) = eventDeclarations[i]
            for (j in outputEvents.indices) {
                val outputEvent = outputEvents[j]
                addState(
                    switchDeclaration = switchDeclaration,
                    start = startState,
                    inputEventDeclaration = inputEvent,
                    outputEventDeclaration = outputEvent,
                    parameterDeclarations = parameterDeclarations,
                    number = j,
                    routeVariableDeclaration = routerParameterDeclaration,
                )
            }
        }
    }

    private fun addState(
        switchDeclaration: BasicFBTypeDeclaration,
        start: StateDeclaration,
        inputEventDeclaration: EventDeclaration,
        outputEventDeclaration: EventDeclaration,
        parameterDeclarations: List<Pair<ParameterDeclaration, ParameterDeclaration>>,
        number: Int,
        routeVariableDeclaration: VariableDeclaration?,
    ) {
        val state = factory.createStateDeclaration(
            StringIdentifier(outputEventDeclaration.name + "_state")
        )
        val backTransition = factory.createStateTransition()
        backTransition.sourceReference.setTarget(state)
        backTransition.targetReference.setTarget(start)
        val toNewStateTransition = factory.createStateTransition()
        toNewStateTransition.sourceReference.setTarget(start)
        toNewStateTransition.targetReference.setTarget(state)
        toNewStateTransition.condition.eventReference.setFQName(inputEventDeclaration.identifier.toString())
        if (routeVariableDeclaration != null) {
            val equality = stFactory.createBinaryExpression(BinaryOperation.EQ)

            val numberLiteral = stFactory.createLiteral(LiteralKind.DEC_INT) as Literal<Int?>

            numberLiteral.value = number
            equality.rightExpression = numberLiteral

            equality.leftExpression = createVariable(routeVariableDeclaration)
            toNewStateTransition.condition.setGuardCondition(equality)
        }

        val stateAction = factory.createStateAction()

        val algorithmDeclaration = factory.createAlgorithmDeclaration(
            StringIdentifier(outputEventDeclaration.name + "_algorithm")
        )
        val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
        for ((assignable, variable) in parameterDeclarations) {
            val assignment = stFactory.createAssignmentStatement()
            assignment.variable = createVariable(variable)
            assignment.expression = createVariable(assignable)
            algorithmBody.statements.add(assignment)
            algorithmDeclaration.body = algorithmBody
            stateAction.algorithm.setTarget(algorithmDeclaration)
        }
        stateAction.event.setFQName(outputEventDeclaration.identifier.toString())

        state.actions.add(stateAction)
        switchDeclaration.algorithms.add(algorithmDeclaration)
        switchDeclaration.ecc.states.add(state)
        switchDeclaration.ecc.transitions.add(toNewStateTransition)
        switchDeclaration.ecc.transitions.add(backTransition)
    }

    private fun createVariable(routeVariableDeclaration: VariableDeclaration): VariableReference {
        val variableReference = stFactory.createVariableReference()
        variableReference.reference.setTarget(routeVariableDeclaration)
        return variableReference
    }

    private fun createNetworkConnection(
        kind: EntryKind,
        source: FunctionBlockDeclarationBase?,
        sourcePortTarget: Declaration,
        target: FunctionBlockDeclarationBase?,
        targetPortTarget: Declaration,
    ): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(kind)
        connection.sourceReference.setTarget(PortPath.createPortPath(source, kind, sourcePortTarget))
        connection.targetReference.setTarget(PortPath.createPortPath(target, kind, targetPortTarget))
        return connection
    }

    private fun EventCopyAndConnectObject.toNetworkConnection() = if (input) createNetworkConnection(
        kind = EntryKind.EVENT,
        source = source,
        sourcePortTarget = sourceEvent,
        target = target,
        targetPortTarget = createdEvent,
    ) else createNetworkConnection(
        kind = EntryKind.EVENT,
        source = target,
        sourcePortTarget = createdEvent,
        target = source,
        targetPortTarget = sourceEvent,
    )

    private fun ParameterCopyAndConnectObject.toNetworkConnection() = if (input) createNetworkConnection(
        kind = EntryKind.DATA,
        source = source,
        sourcePortTarget = sourceParam,
        target = target,
        targetPortTarget = createdParam,
    ) else createNetworkConnection(
        kind = EntryKind.DATA,
        source = target,
        sourcePortTarget = createdParam,
        target = source,
        targetPortTarget = sourceParam,
    )

    private fun EventDeclaration.copy(
        nameSuffix: String?,
        nameToParameterDeclaration: Map<String, ParameterDeclaration>
    ): EventDeclaration {
        val declaration = factory.createEventDeclaration(identifier)
        declaration.name = name.withSuffix(nameSuffix)
        declaration.associations.addAll(associations.map { eventAssociation ->
            val association = factory.createEventAssociation()
            eventAssociation.parameterReference.getTarget()
                ?.let { nameToParameterDeclaration[it.name] }
                ?.run { association.parameterReference.setTarget(this) }
            association
        })
        return declaration
    }

    private fun ParameterDeclaration.copy(nameSuffix: String?): ParameterDeclaration {
        val declaration = factory.createParameterDeclaration(identifier)
        declaration.name = name.withSuffix(nameSuffix)
        declaration.type = type
        return declaration
    }

    private fun String.withSuffix(nameSuffix: String?) = if (nameSuffix == null) {
        this
    } else {
        this + nameSuffix
    }
}