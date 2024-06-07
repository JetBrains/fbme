package org.fbme.extensions.adapter

import org.fbme.extensions.utils.IEC61499FactoryUtils
import org.fbme.extensions.utils.SModelUtils
import org.fbme.extensions.utils.STFactoryUtils
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.VariableDeclaration
import org.jetbrains.mps.openapi.model.SModel

class AdapterSwitchGenerator(
    private val factory: IEC61499Factory,
    owner: PlatformRepository,
    stFactory: STFactory,
) {
    private val factoryUtils: IEC61499FactoryUtils = IEC61499FactoryUtils(factory)
    private val stFactoryUtils: STFactoryUtils = STFactoryUtils(stFactory)
    private val sModelUtils: SModelUtils = SModelUtils(owner)

    fun generateRouter(
        name: String,
        model: SModel,
        source: AdapterTypeDeclaration,
        outputsCount: Int,
        outputRouterName: String,
        target: AdapterTypeDeclaration? = null,
        inputRouterName: String? = null,
        virtualPackage: String? = null,
    ): CompositeFBTypeDeclaration {
        val routerDeclaration = factory.createCompositeFBTypeDeclaration(
            StringIdentifier("${name}_router")
        )
        sModelUtils.addDeclarationToModel(routerDeclaration, model, virtualPackage)

        val socket = factory.createSocketDeclaration(StringIdentifier("socket"))
        socket.typeReference.setTarget(source)
        routerDeclaration.sockets += socket

        for (i in 0 until outputsCount) {
            val plug = factory.createPlugDeclaration(StringIdentifier("plug_$i"))
            plug.typeReference.setTarget(target ?: source)
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
        sModelUtils.addDeclarationToModel(switchDeclaration, model, virtualPackage)
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
            sources = source.type.eventOutputPorts.map { it.declaration as EventDeclaration },
            sourceBlock = source,
            network = network,
            keepAssociations = true,
        ).onEach { (_, event) ->
            for (association in event.associations) {
                val name = association.parameterReference.getTarget()?.name
                if (name != null) {
                    association.parameterReference.setTargetName(name)
                }
            }
        }.associateBy { it.second.name }
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
                sources = plug.type.eventInputPorts.map { it.declaration as EventDeclaration },
                sourceBlock = plug,
                network = network,
                outputToInput = false,
                keepAssociations = true,
            ).forEach { (sourceEvent, createdEvent) ->
                createdEvent.name += "_$i"
                for (association in createdEvent.associations) {
                    val oldName = association.parameterReference.getTarget()?.name
                    if (oldName != null) {
                        association.parameterReference.setTargetName(oldName + "_$i")
                    }
                }
                addState(
                    switchDeclaration = switchDeclaration,
                    start = startState,
                    name = createdEvent.name,
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
        sModelUtils.addDeclarationToModel(switchDeclaration, model, virtualPackage)
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
            sources = target.type.eventInputPorts.map { it.declaration as EventDeclaration },
            sourceBlock = target,
            network = network,
            outputToInput = false,
            keepAssociations = true,
        ).onEach { (_, event) ->
            for (association in event.associations) {
                val name = association.parameterReference.getTarget()?.name
                if (name != null) {
                    association.parameterReference.setTargetName(name)
                }
            }
        }.associateBy { it.second.name }
        val routerParameterDeclaration = routerName?.let { router ->
            outputParameters.first { it.name == router }
        }
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
                sources = plug.type.eventOutputPorts.map { it.declaration as EventDeclaration },
                sourceBlock = plug,
                network = network,
                keepAssociations = true,
            ).forEach { (sourceEvent, createdEvent) ->
                createdEvent.name += "_$i"
                for (association in createdEvent.associations) {
                    val oldName = association.parameterReference.getTarget()?.name
                    if (oldName != null) {
                        association.parameterReference.setTargetName(oldName + "_$i")
                    }
                }
                addState(
                    switchDeclaration = switchDeclaration,
                    start = startState,
                    name = createdEvent.name,
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

    private fun addState(
        switchDeclaration: BasicFBTypeDeclaration,
        start: StateDeclaration,
        name: String,
        inputEventDeclaration: EventDeclaration,
        outputEventDeclaration: EventDeclaration,
        assignableToVariableParameters: List<Pair<ParameterDeclaration, ParameterDeclaration>>,
        number: Int,
        outputRouteVariable: VariableDeclaration?,
        inputRouteVariable: VariableDeclaration?,
    ): StateAction {
        val state = factory.createStateDeclaration(
            StringIdentifier(name + "_state")
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
            StringIdentifier(name + "_algorithm")
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
}
