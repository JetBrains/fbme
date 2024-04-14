package org.fbme.ide.richediting.utils

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.VariableDeclaration
import org.jetbrains.mps.openapi.model.SModel

class AdapterSwitchGenerator(
    private val factory: IEC61499Factory,
    stFactory: STFactory,
) {
    private val factoryUtils: IEC61499FactoryUtils = IEC61499FactoryUtils(factory)
    private val stFactoryUtils: STFactoryUtils = STFactoryUtils(stFactory)
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

    fun generateRouter(
        name: String,
        model: SModel,
        socketAdapterTypeDeclaration: AdapterTypeDeclaration,
        outputsCount: Int,
        outputRouterName: String,
        plugAdapterTypeDeclaration: AdapterTypeDeclaration? = null,
        inputRouterName: String? = null,
        virtualPackage: String? = null,
    ): CompositeFBTypeDeclaration {
        val routerDeclaration = factory.createCompositeFBTypeDeclaration(
            StringIdentifier("${name}_router")
        )
        model.addRootNodes(routerDeclaration, virtualPackage = virtualPackage)

        val socket = factory.createSocketDeclaration(StringIdentifier("socket"))
        socket.typeReference.setTarget(socketAdapterTypeDeclaration)
        routerDeclaration.sockets += socket

        for (i in 0 until outputsCount) {
            val plug = factory.createPlugDeclaration(StringIdentifier("plug_$i"))
            plug.typeReference.setTarget(plugAdapterTypeDeclaration ?: socketAdapterTypeDeclaration)
            routerDeclaration.plugs += plug
        }
        addSocketToPlugsSwitch(
            adapterName = "${name}_leftSwitch",
            model = model,
            network = routerDeclaration.network,
            source = socket,
            targets = routerDeclaration.plugs,
            routerName = outputRouterName,
            virtualPackage = virtualPackage,
        )
        addPlugsToSocketSwitch(
            adapterName = "${name}_rightSwitch",
            model = model,
            network = routerDeclaration.network,
            sources = routerDeclaration.plugs,
            target = socket,
            routerName = inputRouterName,
            virtualPackage = virtualPackage,
        )
        return routerDeclaration
    }

    private fun addSocketToPlugsSwitch(
        adapterName: String,
        model: SModel,
        network: FBNetwork,
        source: FunctionBlockDeclarationBase,
        targets: List<PlugDeclaration>,
        routerName: String,
        virtualPackage: String? = null,
    ): FunctionBlockDeclaration {
        val switchFBIdentifier = StringIdentifier(adapterName)
        val switchDeclaration = factory.createBasicFBTypeDeclaration(switchFBIdentifier)
        model.addRootNodes(switchDeclaration, virtualPackage = virtualPackage)
        val switchBlock = factoryUtils.addFunctionalBlock(switchDeclaration, network)
        val inputParameters = factoryUtils.copyParametersAndConnect(
            destination = switchDeclaration.inputParameters,
            destinationBlock = switchBlock,
            source = source.type.dataOutputPorts.map { it.declaration as ParameterDeclaration },
            sourceBlock = source,
            network = network,
        ).map { it.second }
        val routerParameterDeclaration = inputParameters.first { it.name == routerName }
        val inputEvents = factoryUtils.copyEventsAndConnect(
            destination = switchDeclaration.inputEvents,
            destinationBlock = switchBlock,
            source = source.type.eventOutputPorts.map { it.declaration as EventDeclaration },
            sourceBlock = source,
            network = network,
        ).associateBy { it.second.name }
        val startState = factory.createStateDeclaration(StringIdentifier("Start"))
        switchDeclaration.ecc.states += startState
        for ((i, plug) in targets.withIndex()) {
            val parametersAndCopies = factoryUtils.copyParametersAndConnect(
                destination = switchDeclaration.outputParameters,
                destinationBlock = switchBlock,
                source = plug.type.dataInputPorts.map { it.declaration as ParameterDeclaration },
                sourceBlock = plug,
                network = network,
                outputToInput = false,
            )
            parametersAndCopies.forEach { it.second.name += "_$i" }
            factoryUtils.copyEventsAndConnect(
                destination = switchDeclaration.outputEvents,
                destinationBlock = switchBlock,
                source = plug.type.eventInputPorts.map { it.declaration as EventDeclaration },
                sourceBlock = plug,
                network = network,
                outputToInput = false,
            ).forEach { (sourceEvent, createdEvent) ->
                createdEvent.name += "_$i"
                addState(
                    switchDeclaration = switchDeclaration,
                    start = startState,
                    inputEventDeclaration = checkNotNull(inputEvents[sourceEvent.name]?.second),
                    outputEventDeclaration = createdEvent,
                    assignableToVariableParameters = inputParameters.zip(parametersAndCopies.map { it.second }),
                    number = i,
                    outputRouteVariable = routerParameterDeclaration,
                    inputRouteVariable = null,
                )
            }
        }
        return switchBlock
    }

    private fun addPlugsToSocketSwitch(
        adapterName: String,
        model: SModel,
        network: FBNetwork,
        sources: List<PlugDeclaration>,
        target: FunctionBlockDeclarationBase,
        routerName: String?,
        virtualPackage: String? = null,
    ): FunctionBlockDeclaration {
        val switchFBIdentifier = StringIdentifier(adapterName)
        val switchDeclaration = factory.createBasicFBTypeDeclaration(switchFBIdentifier)
        model.addRootNodes(switchDeclaration, virtualPackage = virtualPackage)
        val switchBlock = factoryUtils.addFunctionalBlock(switchDeclaration, network)
        val outputParameters = factoryUtils.copyParametersAndConnect(
            destination = switchDeclaration.outputParameters,
            destinationBlock = switchBlock,
            source = target.type.dataInputPorts.map { it.declaration as ParameterDeclaration },
            sourceBlock = target,
            network = network,
            outputToInput = false,
        ).map { it.second }
        val outputEvents = factoryUtils.copyEventsAndConnect(
            destination = switchDeclaration.outputEvents,
            destinationBlock = switchBlock,
            source = target.type.eventInputPorts.map { it.declaration as EventDeclaration },
            sourceBlock = target,
            network = network,
            outputToInput = false,
        ).associateBy { it.second.name }
        val routerParameterDeclaration = outputParameters.first { it.name == routerName }
        val startState = factory.createStateDeclaration(StringIdentifier("Start"))
        switchDeclaration.ecc.states += startState
        for ((i, plug) in sources.withIndex()) {
            val parametersAndCopies = factoryUtils.copyParametersAndConnect(
                destination = switchDeclaration.inputParameters,
                destinationBlock = switchBlock,
                source = plug.type.dataOutputPorts.map { it.declaration as ParameterDeclaration },
                sourceBlock = plug,
                network = network,
            )
            parametersAndCopies.forEach { it.second.name += "_$i" }
            factoryUtils.copyEventsAndConnect(
                destination = switchDeclaration.inputEvents,
                destinationBlock = switchBlock,
                source = plug.type.eventOutputPorts.map { it.declaration as EventDeclaration },
                sourceBlock = plug,
                network = network,
            ).forEach { (sourceEvent, createdEvent) ->
                createdEvent.name += "_$i"
                addState(
                    switchDeclaration = switchDeclaration,
                    start = startState,
                    inputEventDeclaration = createdEvent,
                    outputEventDeclaration = checkNotNull(outputEvents[sourceEvent.name]?.second),
                    assignableToVariableParameters = parametersAndCopies.map { it.second }.zip(outputParameters),
                    number = i,
                    outputRouteVariable = null,
                    inputRouteVariable = routerParameterDeclaration,
                )
            }
        }
        return switchBlock
    }

    private fun addSocketPlugsSwitch(
        adapterName: String,
        model: SModel,
        root: CompositeFBTypeDeclaration,
        socket: SocketDeclaration,
        plugs: List<PlugDeclaration>,
        socketToPlug: Boolean,
        routerName: String,
        virtualPackage: String? = null,
    ): FunctionBlockDeclaration {
        createdEvents.clear()
        createdParams.clear()

        val switchFBIdentifier = StringIdentifier(adapterName)
        val switchDeclaration = factory.createBasicFBTypeDeclaration(switchFBIdentifier)
        val switchBlock = factoryUtils.addFunctionalBlock(switchDeclaration, root.network)

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

        model.addRootNodes(switchDeclaration, virtualPackage = virtualPackage)
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
            sourceDeclaration.identifier to ParameterCopyAndConnectObject(
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
        createdEvents += newEventDeclarations
        createdParams += nameToParameterDeclaration.values
        val eventDeclarations = if (input) switchType.inputEvents else switchType.outputEvents
        eventDeclarations += newEventDeclarations.map { it.createdEvent }
        val paramsDeclarations = if (input) switchType.inputParameters else switchType.outputParameters
        paramsDeclarations += nameToCreatedParameterDeclaration.values
    }

    private fun configureEcc(
        switchDeclaration: BasicFBTypeDeclaration,
        eventDeclarations: List<Pair<EventDeclaration, List<EventDeclaration>>>,
        parameterDeclarations: List<Pair<ParameterDeclaration, ParameterDeclaration>>,
        routerParameterDeclaration: ParameterDeclaration?,
    ) {
        val startState = factory.createStateDeclaration(StringIdentifier("Start"))
        switchDeclaration.ecc.states += startState
        for (i in eventDeclarations.indices) {
            val (inputEvent, outputEvents) = eventDeclarations[i]
            for (j in outputEvents.indices) {
                val outputEvent = outputEvents[j]
                addState(
                    switchDeclaration = switchDeclaration,
                    start = startState,
                    inputEventDeclaration = inputEvent,
                    outputEventDeclaration = outputEvent,
                    assignableToVariableParameters = parameterDeclarations,
                    number = j,
                    outputRouteVariable = routerParameterDeclaration,
                    inputRouteVariable = null,
                )
            }
        }
    }

    private fun addState(
        switchDeclaration: BasicFBTypeDeclaration,
        start: StateDeclaration,
        inputEventDeclaration: EventDeclaration,
        outputEventDeclaration: EventDeclaration,
        assignableToVariableParameters: List<Pair<ParameterDeclaration, ParameterDeclaration>>,
        number: Int,
        outputRouteVariable: VariableDeclaration?,
        inputRouteVariable: VariableDeclaration?,
    ): StateAction {
        val state = factory.createStateDeclaration(
            StringIdentifier(outputEventDeclaration.name + "_state")
        )
        switchDeclaration.ecc.states += state
        val backTransition = factory.createStateTransition()
        switchDeclaration.ecc.transitions += backTransition
        backTransition.sourceReference.setTarget(state)
        backTransition.targetReference.setTarget(start)
        val toNewStateTransition = factory.createStateTransition()
        toNewStateTransition.sourceReference.setTarget(start)
        toNewStateTransition.targetReference.setTarget(state)
        toNewStateTransition.condition.eventReference.setFQName(inputEventDeclaration.name)
        if (outputRouteVariable != null) {
            toNewStateTransition.condition.setGuardCondition(
                stFactoryUtils.intEquality(outputRouteVariable, number)
            )
        }
        switchDeclaration.ecc.transitions += toNewStateTransition

        val stateAction = factory.createStateAction()

        val algorithmDeclaration = factory.createAlgorithmDeclaration(
            StringIdentifier(outputEventDeclaration.name + "_algorithm")
        )
        val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
        for ((assignable, variable) in assignableToVariableParameters) {
            algorithmBody.statements += stFactoryUtils.createAssign(variable, stFactoryUtils.createVariable(assignable))
        }
        if (inputRouteVariable != null) {
            algorithmBody.statements += stFactoryUtils.createAssign(
                variable = inputRouteVariable,
                assignable = stFactoryUtils.createIntLiteral(number),
            )
        }
        algorithmDeclaration.body = algorithmBody
        stateAction.algorithm.setTarget(algorithmDeclaration)
        stateAction.event.setFQName(outputEventDeclaration.name)

        state.actions += stateAction
        switchDeclaration.algorithms += algorithmDeclaration
        return stateAction
    }

    private fun EventCopyAndConnectObject.toNetworkConnection() = if (input) factoryUtils.createNetworkConnection(
        kind = EntryKind.EVENT,
        source = source,
        sourcePortTarget = sourceEvent,
        target = target,
        targetPortTarget = createdEvent
    ) else factoryUtils.createNetworkConnection(
        kind = EntryKind.EVENT,
        source = target,
        sourcePortTarget = createdEvent,
        target = source,
        targetPortTarget = sourceEvent
    )

    private fun ParameterCopyAndConnectObject.toNetworkConnection() = if (input) factoryUtils.createNetworkConnection(
        kind = EntryKind.DATA,
        source = source,
        sourcePortTarget = sourceParam,
        target = target,
        targetPortTarget = createdParam
    ) else factoryUtils.createNetworkConnection(
        kind = EntryKind.DATA,
        source = target,
        sourcePortTarget = createdParam,
        target = source,
        targetPortTarget = sourceParam
    )

    private fun EventDeclaration.copy(
        nameSuffix: String?,
        nameToParameterDeclaration: Map<Identifier, ParameterDeclaration>
    ): EventDeclaration {
        val declaration = factory.createEventDeclaration(identifier)
        declaration.name = name.withSuffix(nameSuffix)
        declaration.associations.addAll(associations.map { eventAssociation ->
            val association = factory.createEventAssociation()
            eventAssociation.parameterReference.getTarget()
                ?.let { nameToParameterDeclaration[it.identifier] }
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