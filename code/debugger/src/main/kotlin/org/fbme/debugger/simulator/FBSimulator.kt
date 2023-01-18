package org.fbme.debugger.simulator

import org.fbme.debugger.common.*
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.TraceChange
import org.fbme.debugger.common.state.FBState
import org.fbme.debugger.common.state.State
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.debugger.common.value.Value
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import java.util.*

sealed class FBSimulator(
    @get:JvmSynthetic
    override val declaration: FBTypeDeclaration,
    @get:JvmSynthetic
    override val state: FBState,
    private val parent: Simulator?,
    private val instanceName: String?,
    trace: ExecutionTrace,
) : Simulator(declaration, state, trace) {
    @get:JvmSynthetic
    internal val candidates = mutableMapOf<String, Value<*>>()

    @get:JvmSynthetic
    internal val deferredTriggers = LinkedList<String>()

    fun setVariable(variableName: String, value: Value<*>): Unit = when (variableName) {
        in state.inputVariables -> candidates[variableName] = value.copy()
        in state.outputVariables -> state.outputVariables[variableName] = value.copy()
        else -> error("unexpected variable to set")
    }

    fun triggerEvent(eventName: String): Unit = when (eventName) {
        in state.inputEvents -> triggerInputEvent(eventName)
        in state.outputEvents -> {
            pushValuesOfAssociatedVariablesWithOutputEvent(eventName)
            triggerOutputEvent(eventName)
        }

        else -> error("unexpected event to trigger")
    }

    private fun triggerInputEvent(eventName: String) {
        state.inputEvents[eventName] = state.inputEvents[eventName]!! + 1
        setValuesToAssociatedVariablesWithInputEvent(eventName)

        logCurrentStateAndChange(InputEventChange(eventName))

        triggerInputEventInternal(eventName)

        triggerDeferredOutputEvents()
    }

    private fun setValuesToAssociatedVariablesWithInputEvent(eventName: String) {
        val associatedVariables = declaration.getAssociatedVariablesWithInputEvent(eventName)
        for (associatedVariable in associatedVariables) {
            val newValue = candidates[associatedVariable]
            if (newValue != null) {
                state.inputVariables[associatedVariable] = newValue.copy()
            }
            candidates.remove(associatedVariable)
        }
    }

    @JvmSynthetic
    internal abstract fun triggerInputEventInternal(eventName: String)

    private fun triggerDeferredOutputEvents() {
        while (deferredTriggers.isNotEmpty()) {
            val outputEventName = deferredTriggers.poll()
            triggerOutputEvent(outputEventName)
        }
    }

    private fun triggerOutputEvent(eventName: String) {
        state.outputEvents[eventName] = state.outputEvents[eventName]!! + 1

        logCurrentStateAndChange(OutputEventChange(eventName))

        if (parent != null) {
            val outgoingEventConnections = when (parent) {
                is CompositeFBSimulator -> parent.declaration
                    .getOutgoingEventConnectionsFromPort(instanceName, eventName)

                is ResourceSimulator -> parent.declaration
                    .getOutgoingEventConnectionsFromPort(instanceName, eventName)

                else -> error("can't initialize outgoing connections")
            }

            for (outgoingEventConnection in outgoingEventConnections) {
                val (targetFB, targetPort) = outgoingEventConnection.resolveTargetPortPresentation()

                if (targetFB == null) {
                    check(parent is CompositeFBSimulator)
                    parent.triggerEvent(targetPort)
                } else {
                    val targetFBSimulator = when (parent) {
                        is CompositeFBSimulator -> parent.children[targetFB]!!
                        is ResourceSimulator -> parent.children[targetFB]!!
                        else -> error("unexpected parent type")
                    }
                    targetFBSimulator.triggerInputEvent(targetPort)
                }
            }
        }
    }

    protected fun pushValuesOfAssociatedVariablesWithOutputEvent(eventName: String) {
        if (parent != null) {
            val associatedVariables = declaration.getAssociatedVariablesWithOutputEvent(eventName)
            for (associatedVariable in associatedVariables) {
                val associatedVariableValue = state.outputVariables[associatedVariable]!!

                val outgoingDataConnections = when (parent) {
                    is CompositeFBSimulator -> parent.declaration
                        .getOutgoingDataConnectionsFromPort(instanceName, associatedVariable)

                    is ResourceSimulator -> parent.declaration
                        .getOutgoingDataConnectionsFromPort(instanceName, associatedVariable)

                    else -> error("can't initialize outgoing connections")
                }

                for (outgoingDataConnection in outgoingDataConnections) {
                    val (targetFB, targetPort) = outgoingDataConnection.resolveTargetPortPresentation()

                    if (targetFB == null) {
                        check(parent is CompositeFBSimulator)
                        parent.state.outputVariables[targetPort] = associatedVariableValue.copy()
                    } else {
                        val targetFBSimulator = when (parent) {
                            is CompositeFBSimulator -> parent.children[targetFB]!!
                            is ResourceSimulator -> parent.children[targetFB]!!
                            else -> error("unexpected parent type")
                        }
                        targetFBSimulator.candidates[targetPort] = associatedVariableValue
                    }
                }
            }
        }
    }

    protected fun addDeferredTrigger(eventName: String) {
        deferredTriggers.add(eventName)
    }

    @JvmSynthetic
    internal fun setCandidate(port: String, value: Value<*>) {
        candidates[port] = value
    }

    private val rootFBState: State by lazy {
        var curParent: Simulator = this
        while ((curParent as? FBSimulator)?.parent != null) {
            curParent = curParent.parent!!
        }
        curParent.state
    }

    private val fbPath: List<String> by lazy {
        val path = mutableListOf<String>()
        var cur: Simulator = this
        while ((cur as? FBSimulator)?.parent != null) {
            path.add(cur.instanceName!!)
            cur = cur.parent!!
        }
        path.reversed()
    }

    protected fun logCurrentStateAndChange(change: TraceChange) {
        trace.add(TraceItem(rootFBState.copy(), fbPath, change))
    }
}