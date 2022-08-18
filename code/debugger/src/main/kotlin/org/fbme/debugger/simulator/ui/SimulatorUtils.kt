package org.fbme.debugger.simulator.ui

import org.fbme.debugger.common.state.valueOfParameter
import org.fbme.debugger.simulator.*

fun Simulator.resolveSimulator(path: List<String>): Simulator? {
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
            is ResourceSimulatorImpl -> {
                val next = cur.children[p] ?: return null
                cur = next
            }
            else -> {}
        }
    }
    return cur
}