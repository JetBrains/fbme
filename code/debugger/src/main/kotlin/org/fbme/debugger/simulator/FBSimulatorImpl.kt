package org.fbme.debugger.simulator

import org.fbme.debugger.common.*
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.TraceChange
import org.fbme.debugger.common.state.FBStateImpl
import org.fbme.debugger.common.state.Value
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import java.util.*

abstract class FBSimulatorImpl(override val trace: ExecutionTrace) : FBSimulator {
    abstract val typeDeclaration: FBTypeDeclaration
    abstract val state: FBStateImpl

    abstract val parent: Simulator?
    abstract val fbInstanceName: String?

    private val candidates = mutableMapOf<String, Value<Any?>>()
    private val deferredTriggers = LinkedList<String>()

    private val rootFBState by lazy {
        var curParent: Simulator = this
        while ((curParent as? FBSimulatorImpl)?.parent != null) {
            curParent = (curParent as FBSimulatorImpl).parent!!
        }
        (curParent as? FBSimulatorImpl)?.state ?: (curParent as? ResourceSimulatorImpl)?.state!!
    }

    private val fbPath by lazy {
        val path = mutableListOf<String>()
        var cur: Simulator? = this
        while ((cur as? FBSimulatorImpl)?.parent != null) {
            path.add((cur as FBSimulatorImpl).fbInstanceName!!)
            cur = (cur as FBSimulatorImpl).parent
        }
        path.reversed()
    }

    final override fun triggerEvent(eventName: String) {
        if (state.inputEvents.contains(eventName)) {
            triggerInputEvent(eventName)
        } else if (state.outputEvents.contains(eventName)) {
            pushValuesOfAssociatedVariablesWithOutputEvent(eventName)
            triggerOutputEvent(eventName)
        } else {
            error("unexpected event to trigger")
        }
    }

    final override fun setVariable(variableName: String, value: Value<Any?>) {
        if (state.inputVariables.contains(variableName)) {
            candidates[variableName] = value
        } else if (state.outputVariables.contains(variableName)) {
            state.outputVariables[variableName]!!.value = value.value
        } else {
            error("unexpected variable to set")
        }
    }

    private fun triggerInputEvent(eventName: String) {
        state.inputEvents[eventName] = state.inputEvents[eventName]!! + 1
        setValuesToAssociatedVariablesWithInputEvent(eventName)

        logCurrentStateAndChange(InputEventChange(eventName))

        triggerInputEventInternal(eventName)

        triggerDeferredOutputEvents()
    }

    abstract fun triggerInputEventInternal(eventName: String)

    private fun triggerOutputEvent(eventName: String) {
        state.outputEvents[eventName] = state.outputEvents[eventName]!! + 1

        logCurrentStateAndChange(OutputEventChange(eventName))

        if (parent != null) {
            val outgoingEventConnections = when (parent) {
                is FBSimulatorImpl -> (parent as CompositeFBSimulator)
                    .typeDeclaration.getOutgoingEventConnectionsFromPort(fbInstanceName, eventName)

                is ResourceSimulatorImpl -> (parent as ResourceSimulatorImpl)
                    .resourceDeclaration.getOutgoingEventConnectionsFromPort(fbInstanceName, eventName)

                else -> error("can't initialize outgoing connections")
            }

            for (outgoingEventConnection in outgoingEventConnections) {
                val (targetFB, targetPort) = outgoingEventConnection.resolveTargetPortPresentation()

                if (targetFB == null) {
                    (parent as CompositeFBSimulator).triggerEvent(targetPort)
                } else {
                    val children = (parent as? CompositeFBSimulator)?.children
                        ?: (parent as? ResourceSimulatorImpl)?.children!!
                    children[targetFB]!!.triggerInputEvent(targetPort)
                }
            }
        }
    }

    private fun setValuesToAssociatedVariablesWithInputEvent(eventName: String) {
        val associatedVariables = typeDeclaration.getAssociatedVariablesWithInputEvent(eventName)
        for (associatedVariable in associatedVariables) {
            val newValue = candidates[associatedVariable]
            if (newValue != null) {
                state.inputVariables[associatedVariable]!!.value = newValue.value
            }
            candidates.remove(associatedVariable)
        }
    }

    protected fun pushValuesOfAssociatedVariablesWithOutputEvent(eventName: String) {
        if (parent != null) {
            val associatedVariables = typeDeclaration.getAssociatedVariablesWithOutputEvent(eventName)
            for (associatedVariable in associatedVariables) {
                val associatedVariableValue =
                    state.outputVariables[associatedVariable] ?: error("associated variable not found")

                val outgoingDataConnections = when (parent) {
                    is FBSimulatorImpl -> (parent as CompositeFBSimulator)
                        .typeDeclaration.getOutgoingDataConnectionsFromPort(fbInstanceName, associatedVariable)

                    is ResourceSimulatorImpl -> (parent as ResourceSimulatorImpl)
                        .resourceDeclaration.getOutgoingDataConnectionsFromPort(fbInstanceName, associatedVariable)

                    else -> error("can't initialize outgoing connections")
                }

                for (outgoingDataConnection in outgoingDataConnections) {
                    val (targetFB, targetPort) = outgoingDataConnection.resolveTargetPortPresentation()

                    if (targetFB == null) {
                        (parent as CompositeFBSimulator).state.outputVariables[targetPort]!!.value =
                            associatedVariableValue.value
                    } else {
                        val children = (parent as? CompositeFBSimulator)?.children
                            ?: (parent as? ResourceSimulatorImpl)?.children!!
                        children[targetFB]!!.candidates[targetPort] = associatedVariableValue
                    }
                }
            }
        }
    }

    protected fun logCurrentStateAndChange(change: TraceChange) {
        trace.add(TraceItem(rootFBState.copy(), fbPath, change))
    }

    protected fun addDeferredTrigger(eventName: String) {
        deferredTriggers.add(eventName)
    }

    private fun triggerDeferredOutputEvents() {
        while (deferredTriggers.isNotEmpty()) {
            val outputEventName = deferredTriggers.poll()
            triggerOutputEvent(outputEventName)
        }
    }
}