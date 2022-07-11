package org.fbme.debugger.simulator.ui

import org.fbme.debugger.common.state.valueOfParameter
import org.fbme.debugger.simulator.BasicFBSimulator
import org.fbme.debugger.simulator.CompositeFBSimulator
import org.fbme.debugger.simulator.FBSimulator

fun FBSimulator.resolveSimulator(path: List<String>): FBSimulator? {
    var cur = this
    var result: FBSimulator? = this
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
            else -> {}
        }
    }
    result = cur

    return result
}