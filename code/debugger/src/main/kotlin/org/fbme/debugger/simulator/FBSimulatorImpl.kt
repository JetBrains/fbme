package org.fbme.debugger.simulator

import org.fbme.debugger.common.*
import org.fbme.debugger.common.state.FBStateImpl
import org.fbme.debugger.common.state.Value
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import java.util.*

abstract class FBSimulatorImpl : FBSimulator {
    abstract val typeDeclaration: FBTypeDeclaration
    abstract val state: FBStateImpl

    protected abstract val parent: CompositeFBSimulator?
    protected abstract val fbInstanceName: String?

    private val candidates = mutableMapOf<String, Value<Any?>>()
    protected val deferredTriggers = LinkedList<String>()

    override fun triggerEvent(eventName: String) {
        if (state.inputEvents.contains(eventName)) {
            triggerInputEvent(eventName)
        } else if (state.outputEvents.contains(eventName)) {
            triggerOutputEvent(eventName)
        } else {
            error("unexpected event to trigger")
        }
    }

    override fun setVariable(variableName: String, value: Value<Any?>) {
        if (state.inputVariables.contains(variableName)) {
            setCandidateInputVariable(variableName, value)
        } else if (state.outputVariables.contains(variableName)) {
            setOutputVariable(variableName, value)
        } else {
            error("unexpected variable to set")
        }
    }


    private fun setCandidateInputVariable(variableName: String, value: Value<Any?>) {
        candidates[variableName] = value
    }

    protected fun setOutputVariable(variableName: String, value: Value<Any?>) {
        state.outputVariables[variableName]!!.value = value.value
    }

    abstract fun triggerInputEvent(eventName: String)

    private fun triggerOutputEvent(eventName: String) {
        state.outputEvents[eventName] = state.outputEvents[eventName]!! + 1

        if (parent != null) {
            val outgoingEventConnections = parent!!.typeDeclaration
                .getOutgoingEventConnectionsFromPort(fbInstanceName, eventName)

            for (outgoingEventConnection in outgoingEventConnections) {
                val (targetFB, targetPort) = outgoingEventConnection.resolveTargetPortPresentation()

                if (targetFB == null) {
                    parent!!.pushValuesOfAssociatedVariablesWithOutputEvent(targetPort)
                    parent!!.deferredTriggers.add(targetPort)
                } else {
                    parent!!.children[targetFB]!!.triggerInputEvent(targetPort)
                }
            }
        }
    }

    protected fun setValuesToAssociatedVariablesWithInputEvent(eventName: String) {
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

                val outgoingDataConnections = parent!!.typeDeclaration
                    .getOutgoingDataConnectionsFromPort(fbInstanceName, associatedVariable)

                for (outgoingDataConnection in outgoingDataConnections) {
                    val (targetFB, targetPort) = outgoingDataConnection.resolveTargetPortPresentation()

                    if (targetFB == null) {
                        parent!!.setOutputVariable(targetPort, associatedVariableValue)
                    } else {
                        parent!!.children[targetFB]!!.setCandidateInputVariable(targetPort, associatedVariableValue)
                    }
                }
            }
        }
    }

    protected fun triggerDeferredOutputEvents() {
        while (deferredTriggers.isNotEmpty()) {
            val outputEventName = deferredTriggers.peek()
            triggerOutputEvent(outputEventName)
        }
    }
}