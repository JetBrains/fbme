package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.ElementaryType

data class BasicFBData(
    override val events: MutableMap<String, EventInfo> = mutableMapOf(),
    override val variables: MutableMap<String, Value<*>> = mutableMapOf(),
    override val associations: MutableMap<String, Set<String>> = mutableMapOf(),
    val transitions: MutableMap<String, MutableList<OutgoingTransition>> = mutableMapOf(),
    val actions: MutableMap<String, MutableList<ActionData>> = mutableMapOf(),
    val algorithms: MutableMap<String, MutableList<Statement>> = mutableMapOf(),
    var currentState: String = "INIT"
) : FBDataImpl() {
    constructor(fbDeclaration: BasicFBTypeDeclaration) : this() {
        addAlgorithms(fbDeclaration.algorithms)

        val ecc = fbDeclaration.ecc
        addTransitions(ecc.transitions)
        addActions(ecc.states)

        val typeDescriptor = fbDeclaration.typeDescriptor
        addEvents(typeDescriptor.eventInputPorts)
        addEvents(typeDescriptor.eventOutputPorts)

        addInternalVariables(fbDeclaration.internalVariables)
        addVariables(typeDescriptor.dataInputPorts)
        addVariables(typeDescriptor.dataOutputPorts)

        addAssociations(typeDescriptor)
    }

    private fun addAlgorithms(algorithms: MutableList<AlgorithmDeclaration>) {
        for (algorithm in algorithms) {
            val algorithmName = algorithm.name
            when (val algorithmBody = algorithm.body) {
                is AlgorithmBody.ST -> {
                    this.algorithms[algorithmName] = algorithmBody.statements
                }
                else -> error("unexpected language of algorithm $algorithmName")
            }
        }
    }

    private fun addTransitions(transitions: MutableList<StateTransition>) {
        for (transition in transitions) {
            val source = transition.sourceReference.presentation
            val target = transition.targetReference.presentation

            val conditionEvent = transition.condition.eventReference.presentation
            val conditionExpression = transition.condition.getGuardCondition()

            val outgoingTransitionsFromSource = this.transitions.getOrPut(source) { mutableListOf() }
            val outgoingTransitionFromSource =
                OutgoingTransition(target, TransitionCondition(conditionEvent, conditionExpression))
            outgoingTransitionsFromSource += outgoingTransitionFromSource
        }
    }

    private fun addActions(states: MutableList<StateDeclaration>) {
        for (state in states) {
            val stateName = state.name
            val stateActions = mutableListOf<ActionData>()
            for (action in state.actions) {
                stateActions.add(ActionData(action.algorithm.presentation, action.event.presentation))
            }
            actions[stateName] = stateActions
        }
    }

    private fun addInternalVariables(internalVariables: MutableList<ParameterDeclaration>) {
        for (internalVariable in internalVariables) {
            val initialLiteral = internalVariable.initialValue
            val initialValue: Value<*> =
                if (initialLiteral != null) Value(initialLiteral.value)
                else (internalVariable.type as? ElementaryType)?.defaultValue ?: error("smth went wrong")
            variables[internalVariable.name] = initialValue
        }
    }
}
