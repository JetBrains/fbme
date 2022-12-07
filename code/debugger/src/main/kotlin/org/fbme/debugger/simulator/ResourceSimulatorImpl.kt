package org.fbme.debugger.simulator

import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.ResourceState
import org.fbme.debugger.common.state.ServiceFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ResourceSimulatorImpl(
    val resourceDeclaration: ResourceDeclaration,
    val state: ResourceState,
    override val trace: ExecutionTrace,
) : ResourceSimulator {
    val children: Map<String, FBSimulatorImpl>

    init {
        children = state.children.mapValues { (childName, childState) ->
            val childDeclaration = resourceDeclaration.network.allComponents
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

    override fun start() {
        TODO("Not yet implemented")
    }
}