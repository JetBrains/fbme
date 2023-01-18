package org.fbme.debugger.simulator

import org.fbme.debugger.common.*
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeFBSimulator private constructor(
    @get:JvmSynthetic
    override val declaration: CompositeFBTypeDeclaration,
    @get:JvmSynthetic
    override val state: CompositeFBState,
    parent: Simulator?,
    instanceName: String?,
    trace: ExecutionTrace,
) : FBSimulator(declaration, state, parent, instanceName, trace) {
    @JvmOverloads
    constructor(
        typeDeclaration: CompositeFBTypeDeclaration,
        initialState: CompositeFBState = CompositeFBState(typeDeclaration),
    ) : this(typeDeclaration, initialState, null, null, ExecutionTrace(initialState))

    @get:JvmSynthetic
    internal val children = collectChildren()

    @JvmSynthetic
    override fun triggerInputEventInternal(eventName: String) {
        pushAssociatedVariablesWithInputEvent(eventName)

        val outgoingEventConnections = declaration.getOutgoingEventConnectionsFromPort(null, eventName)
        for (outgoingEventConnection in outgoingEventConnections) {
            val (targetFB, targetPort) = outgoingEventConnection.resolveTargetPortPresentation()

            if (targetFB == null) {
                triggerEvent(targetPort)
            } else {
                val targetFBSimulator = children[targetFB]!!
                targetFBSimulator.triggerEvent(targetPort)
            }
        }
    }

    private fun pushAssociatedVariablesWithInputEvent(eventName: String) {
        val associatedVariables = declaration.getAssociatedVariablesWithInputEvent(eventName)
        for (associatedVariable in associatedVariables) {
            val newValue = state.inputVariables[associatedVariable]
            if (newValue != null) {
                val outgoingDataConnections =
                    declaration.getOutgoingDataConnectionsFromPort(null, associatedVariable)

                for (outgoingDataConnection in outgoingDataConnections) {
                    val (targetFB, targetPort) = outgoingDataConnection.resolveTargetPortPresentation()

                    if (targetFB == null) {
                        state.outputVariables[targetPort] = newValue.copy()
                    } else {
                        val targetFBSimulator = children[targetFB]!!
                        targetFBSimulator.setCandidate(targetPort, newValue)
                    }
                }
            }
        }
    }

    private fun collectChildren(): Map<String, FBSimulator> {
        return state.children.mapValues { (childName, childState) ->
            val childDeclaration = declaration.getChildDeclaration(childName)
            createChildSimulator(childDeclaration, childState, childName, trace)
        }
    }

    companion object {
        @JvmSynthetic
        internal fun createInstanceAsChild(
            typeDeclaration: CompositeFBTypeDeclaration,
            initialState: CompositeFBState,
            parent: Simulator,
            fbInstanceName: String,
            trace: ExecutionTrace,
        ) = CompositeFBSimulator(typeDeclaration, initialState, parent, fbInstanceName, trace)
    }
}