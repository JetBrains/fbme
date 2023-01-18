package org.fbme.debugger.simulator

import org.fbme.debugger.common.state.ServiceFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ServiceFBSimulator private constructor(
    @get:JvmSynthetic
    override val declaration: ServiceInterfaceFBTypeDeclaration,
    @get:JvmSynthetic
    override val state: ServiceFBState,
    parent: Simulator?,
    instanceName: String?,
    trace: ExecutionTrace,
) : FBSimulator(declaration, state, parent, instanceName, trace) {
    @JvmOverloads
    constructor(
        typeDeclaration: ServiceInterfaceFBTypeDeclaration,
        initialState: ServiceFBState = ServiceFBState(typeDeclaration),
    ) : this(typeDeclaration, initialState, null, null, ExecutionTrace(initialState))

    @JvmSynthetic
    override fun triggerInputEventInternal(eventName: String) {
        // do nothing
    }

    companion object {
        @JvmSynthetic
        internal fun createInstanceAsChild(
            typeDeclaration: ServiceInterfaceFBTypeDeclaration,
            initialState: ServiceFBState,
            parent: Simulator,
            fbInstanceName: String,
            trace: ExecutionTrace,
        ) = ServiceFBSimulator(typeDeclaration, initialState, parent, fbInstanceName, trace)
    }
}