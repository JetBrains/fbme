package org.fbme.debugger.simulator

import org.fbme.debugger.common.state.ServiceFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ServiceFBSimulator(
    override val typeDeclaration: ServiceInterfaceFBTypeDeclaration,
    override val state: ServiceFBState,
    override val parent: Simulator?,
    override val fbInstanceName: String?,
    trace: ExecutionTrace
) : FBSimulatorImpl(trace) {
    override fun triggerInputEventInternal(eventName: String) {
        // TODO: do nothing?
    }
}