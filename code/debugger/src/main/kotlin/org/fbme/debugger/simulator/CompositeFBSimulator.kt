package org.fbme.debugger.simulator

import org.fbme.debugger.common.getAssociatedVariablesWithInputEvent
import org.fbme.debugger.common.getOutgoingDataConnectionsFromPort
import org.fbme.debugger.common.getOutgoingEventConnectionsFromPort
import org.fbme.debugger.common.resolveTargetPortPresentation
import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.ServiceFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class CompositeFBSimulator(
    override val typeDeclaration: CompositeFBTypeDeclaration,
    override val state: CompositeFBState,
    override val parent: Simulator?,
    override val fbInstanceName: String?,
    trace: ExecutionTrace,
) : FBSimulatorImpl(trace) {
    val children: Map<String, FBSimulatorImpl>

    init {
        children = state.children.mapValues { (childName, childState) ->
            val childDeclaration = typeDeclaration.network.allComponents
                .firstOrNull { component -> component.name == childName }?.type?.declaration
                ?: error("type declaration of FB $childName not found")

            when (childDeclaration) {
                is BasicFBTypeDeclaration -> BasicFBSimulator(
                    typeDeclaration = childDeclaration,
                    state = childState as BasicFBState,
                    parent = this,
                    fbInstanceName = childName,
                    trace = trace
                )
                is CompositeFBTypeDeclaration -> CompositeFBSimulator(
                    typeDeclaration = childDeclaration,
                    state = childState as CompositeFBState,
                    parent = this,
                    fbInstanceName = childName,
                    trace = trace
                )
                is ServiceInterfaceFBTypeDeclaration -> ServiceFBSimulator(
                    typeDeclaration = childDeclaration,
                    state = childState as ServiceFBState,
                    parent = this,
                    fbInstanceName = childName,
                    trace = trace
                )
                else -> error("unexpected type")
            }
        }
    }

    override fun triggerInputEventInternal(eventName: String) {
        pushAssociatedVariablesWithInputEvent(eventName)

        val outgoingEventConnections = typeDeclaration.getOutgoingEventConnectionsFromPort(null, eventName)
        for (outgoingEventConnection in outgoingEventConnections) {
            val (targetFB, targetPort) = outgoingEventConnection.resolveTargetPortPresentation()

            if (targetFB == null) {
                triggerEvent(targetPort)
            } else {
                children[targetFB]!!.triggerEvent(targetPort)
            }
        }
    }

    private fun pushAssociatedVariablesWithInputEvent(eventName: String) {
        val associatedVariables = typeDeclaration.getAssociatedVariablesWithInputEvent(eventName)
        for (associatedVariable in associatedVariables) {
            val newValue = state.inputVariables[associatedVariable]
            if (newValue != null) {
                val outgoingDataConnections =
                    typeDeclaration.getOutgoingDataConnectionsFromPort(null, associatedVariable)

                for (outgoingDataConnection in outgoingDataConnections) {
                    val (targetFB, targetPort) = outgoingDataConnection.resolveTargetPortPresentation()

                    if (targetFB == null) {
                        state.outputVariables[targetPort] = newValue.copy()
                    } else {
                        children[targetFB]!!.candidates[targetPort] = newValue
                    }
                }
            }
        }
    }
}