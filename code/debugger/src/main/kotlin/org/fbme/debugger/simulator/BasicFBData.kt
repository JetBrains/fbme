package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.statements.Statement

class BasicFBData(fbDeclaration: BasicFBTypeDeclaration) : FBDataImpl(fbDeclaration) {
    val internalVariables: LinkedHashMap<String, Value<*>> = linkedMapOf()
    val transitions: MutableMap<String, MutableList<OutgoingTransition>> = mutableMapOf()
    val actions: MutableMap<String, MutableList<ActionData>> = mutableMapOf()
    val algorithms: MutableMap<String, MutableList<Statement>> = mutableMapOf()
    var currentState: String = "START"
    var isFirstStep: Boolean = true

    init {
        val ecc = fbDeclaration.ecc
        addTransitions(ecc.transitions)
        addActions(ecc.states)

        addAlgorithms(fbDeclaration.algorithms)

        addInternalVariables(fbDeclaration.internalVariables)
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

    private fun addInternalVariables(internalVariables: List<ParameterDeclaration>) {
        for (internalVariable in internalVariables) {
            val initialValue = extractInitialValue(internalVariable)
            this.internalVariables[internalVariable.name] = initialValue
        }
    }
}
