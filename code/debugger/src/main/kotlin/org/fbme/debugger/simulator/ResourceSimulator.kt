package org.fbme.debugger.simulator

import org.fbme.debugger.common.getChildDeclaration
import org.fbme.debugger.common.state.ResourceState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class ResourceSimulator @JvmOverloads constructor(
    @get:JvmSynthetic
    override val declaration: ResourceDeclaration,
    @get:JvmSynthetic
    override val state: ResourceState = ResourceState(declaration),
) : Simulator(declaration, state, ExecutionTrace(state)) {
    @get:JvmSynthetic
    internal val children = collectChildren()

    private fun collectChildren(): Map<String, FBSimulator> {
        return state.children.mapValues { (childName, childState) ->
            val childDeclaration = declaration.getChildDeclaration(childName)
            createChildSimulator(childDeclaration, childState, childName, trace)
        }
    }
}