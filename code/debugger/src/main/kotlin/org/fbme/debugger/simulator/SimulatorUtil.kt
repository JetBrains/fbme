package org.fbme.debugger.simulator

import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.FBState
import org.fbme.debugger.common.state.ServiceFBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.valueOfParameter
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

@JvmSynthetic
internal fun ResourceSimulator.applyContext(otherSimulator: ResourceSimulator) {
    for ((fbName, fbSimulator) in otherSimulator.children) {
        children[fbName]!!.applyContext(fbSimulator)
    }
}

private fun FBSimulator.applyFBContext(otherSimulator: FBSimulator) {
    for ((name, value) in otherSimulator.candidates) {
        candidates[name] = value.copy()
    }
    for (name in otherSimulator.deferredTriggers) {
        deferredTriggers.add(name)
    }
}

@JvmSynthetic
internal fun FBSimulator.applyContext(otherSimulator: FBSimulator) {
    when (this) {
        is CompositeFBSimulator -> applyContext(otherSimulator as CompositeFBSimulator)
        is BasicFBSimulator -> applyContext(otherSimulator as BasicFBSimulator)
        is ServiceFBSimulator -> applyContext(otherSimulator as ServiceFBSimulator)
    }
}

@JvmSynthetic
internal fun CompositeFBSimulator.applyContext(otherSimulator: CompositeFBSimulator) {
    applyFBContext(otherSimulator)
    for ((fbName, fbSimulator) in otherSimulator.children) {
        children[fbName]!!.applyContext(fbSimulator)
    }
}

@JvmSynthetic
internal fun BasicFBSimulator.applyContext(otherSimulator: BasicFBSimulator) {
    applyFBContext(otherSimulator)
}

@JvmSynthetic
internal fun ServiceFBSimulator.applyContext(otherSimulator: ServiceFBSimulator) {
    applyFBContext(otherSimulator)
}

@JvmSynthetic
internal fun Simulator.resolveSimulator(path: List<String>): Simulator? {
    var cur = this
    for ((ind, p) in path.withIndex()) {
        when (cur) {
            is BasicFBSimulator -> {
                check(ind == path.size - 1)
                val value = cur.state.valueOfParameter(p) ?: return null
            }

            is CompositeFBSimulator -> {
                val value = cur.state.valueOfParameter(p)

                if (value == null) {
                    val next = cur.children[p] ?: return null
                    cur = next
                }
            }

            is ServiceFBSimulator -> {
                check(ind == path.size - 1)
                val value = cur.state.valueOfParameter(p) ?: return null
            }

            is ResourceSimulator -> {
                val next = cur.children[p] ?: return null
                cur = next
            }
        }
    }
    return cur
}

@JvmSynthetic
internal fun Simulator.createChildSimulator(
    childDeclaration: Declaration,
    childState: FBState,
    childName: String,
    trace: ExecutionTrace,
) = when (childDeclaration) {
    is BasicFBTypeDeclaration -> BasicFBSimulator.createInstanceAsChild(
        typeDeclaration = childDeclaration,
        initialState = childState as BasicFBState,
        parent = this,
        fbInstanceName = childName,
        trace = trace
    )

    is CompositeFBTypeDeclaration -> CompositeFBSimulator.createInstanceAsChild(
        typeDeclaration = childDeclaration,
        initialState = childState as CompositeFBState,
        parent = this,
        fbInstanceName = childName,
        trace = trace
    )

    is ServiceInterfaceFBTypeDeclaration -> ServiceFBSimulator.createInstanceAsChild(
        typeDeclaration = childDeclaration,
        initialState = childState as ServiceFBState,
        parent = this,
        fbInstanceName = childName,
        trace = trace
    )

    else -> error("unexpected type")
}