package org.fbme.debugger.simulator

import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.evaluateCondition
import org.fbme.debugger.common.getActionsOnState
import org.fbme.debugger.common.getAlgorithmByName
import org.fbme.debugger.common.getOutgoingTransitionsFromState
import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition

class BasicFBSimulator private constructor(
    @get:JvmSynthetic
    override val declaration: BasicFBTypeDeclaration,
    @get:JvmSynthetic
    override val state: BasicFBState,
    parent: Simulator?,
    instanceName: String?,
    trace: ExecutionTrace,
) : FBSimulator(declaration, state, parent, instanceName, trace) {
    @JvmOverloads
    constructor(
        typeDeclaration: BasicFBTypeDeclaration,
        initialState: BasicFBState = BasicFBState(typeDeclaration),
    ) : this(typeDeclaration, initialState, null, null, ExecutionTrace(initialState))

    private val interpreter = STInterpreter(
        this.state.inputVariables,
        this.state.internalVariables,
        this.state.outputVariables
    )

    @JvmSynthetic
    override fun triggerInputEventInternal(eventName: String) {
        var transition: StateTransition? = findTransition(activeEvent = eventName) ?: return

        do {
            val nextState = transition!!.targetReference.presentation

            state.activeState = nextState
            performActions()
            logCurrentStateAndChange(StateChange(nextState))

            transition = findTransition(activeEvent = null)
        } while (transition != null)
    }

    private fun findTransition(activeEvent: String?): StateTransition? = declaration
        .getOutgoingTransitionsFromState(state.activeState)
        .firstOrNull { transition -> transition.evaluateCondition(activeEvent, interpreter) }

    private fun performActions() {
        val actions = declaration.getActionsOnState(state.activeState)
        for (action in actions) {
            val algorithmName = action.algorithm.presentation
            if (algorithmName != "") {
                val algorithmDeclaration = declaration.getAlgorithmByName(algorithmName)
                val body = algorithmDeclaration.body
                check(body is AlgorithmBody.ST) { "unexpected language of algorithm $algorithmName" }
                val statements = body.statements
                statements.forEach(interpreter::interpret)
            }

            val outputEventName = action.event.presentation
            if (outputEventName != "") {
                pushValuesOfAssociatedVariablesWithOutputEvent(outputEventName)
                addDeferredTrigger(outputEventName)
            }
        }
    }

    companion object {
        @JvmSynthetic
        internal fun createInstanceAsChild(
            typeDeclaration: BasicFBTypeDeclaration,
            initialState: BasicFBState,
            parent: Simulator,
            fbInstanceName: String,
            trace: ExecutionTrace,
        ) = BasicFBSimulator(typeDeclaration, initialState, parent, fbInstanceName, trace)
    }
}