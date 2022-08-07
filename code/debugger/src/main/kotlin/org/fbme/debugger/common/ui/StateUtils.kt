package org.fbme.debugger.common.ui

import org.fbme.debugger.common.state.*

fun State.resolveValue(path: List<String>): String? { // TODO
    var cur = this
    var result: String? = null
    for ((ind, p) in path.withIndex()) {
        when (cur) {
            is ServiceFBState -> {
                check(ind == path.size - 1)
                val value = cur.valueOfParameter(p) ?: return null
                result = value
            }
            is BasicFBState -> {
                check(ind == path.size - 1)
                val value = cur.valueOfParameter(p) ?: return null
                result = value
            }
            is CompositeFBState -> {
                val value = cur.valueOfParameter(p)

                if (value == null) {
                    val next = cur.children[p] ?: return null
                    cur = next
                } else {
                    result = value
                }
            }
            is ResourceState -> {
                val next = cur.children[p] ?: return null
                cur = next
            }
            else -> {}
        }
    }
    return result
}

fun State.resolveFB(path: List<String>): FBStateImpl {
    var cur: State = this
    if (path.isNotEmpty()) {
        when (cur) {
            is ResourceState -> {
                for (fbInstanceName in path) {
                    cur = (cur as ResourceState).children[fbInstanceName]!!
                }
            }
            is CompositeFBState -> {
                for (fbInstanceName in path) {
                    cur = (cur as CompositeFBState).children[fbInstanceName]!!
                }
            }
            else -> {}
        }
    }
    return cur as FBStateImpl
}