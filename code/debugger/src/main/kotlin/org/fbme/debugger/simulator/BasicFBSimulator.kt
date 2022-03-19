package org.fbme.debugger.simulator

import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.evaluateCondition
import org.fbme.debugger.common.getActionsOnState
import org.fbme.debugger.common.getAlgorithmByName
import org.fbme.debugger.common.getOutgoingTransitionsFromState
import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition

class BasicFBSimulator(
    override val typeDeclaration: BasicFBTypeDeclaration,
    override val state: BasicFBState,
    override val parent: CompositeFBSimulator?,
    override val fbInstanceName: String,
    trace: SimulationTrace
) : FBSimulatorImpl(trace) {
    private val interpreter = STInterpreter(
        state.inputVariables,
        state.internalVariables,
        state.outputVariables
    )

    override fun triggerInputEventInternal(eventName: String) {
        var transition: StateTransition? = findTransition(activeEvent = eventName) ?: return

        do {
            val nextState = transition!!.targetReference.presentation

            logCurrentStateAndNextChange(StateChange(nextState))

            state.activeState = nextState
            performActions()
            transition = findTransition(activeEvent = null)
        } while (transition != null)
    }

    private fun findTransition(activeEvent: String?): StateTransition? {
        return typeDeclaration
            .getOutgoingTransitionsFromState(state.activeState)
            .firstOrNull { transition -> transition.evaluateCondition(activeEvent, interpreter) }
    }

    private fun performActions() {
        val actions = typeDeclaration.getActionsOnState(state.activeState)
        for (action in actions) {
            val algorithmName = action.algorithm.presentation
            val algorithmDeclaration = typeDeclaration.getAlgorithmByName(algorithmName)
            val statements = (algorithmDeclaration.body as? AlgorithmBody.ST)?.statements
                ?: error("unexpected language of algorithm $algorithmName")
            for (statement in statements) {
                interpreter.interpret(statement)
            }

            val outputEventName = action.event.presentation
            pushValuesOfAssociatedVariablesWithOutputEvent(outputEventName)
            addDeferredTrigger(outputEventName)
        }
    }
}