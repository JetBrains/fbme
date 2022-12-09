package org.fbme.debugger.common

import org.fbme.debugger.common.state.*

@JvmSynthetic
internal fun FBState.typeOfParameter(name: String): String? = when {
    name in inputEvents -> "Input Event"
    name in outputEvents -> "Output Event"
    name in inputVariables -> "Input Variable"
    name in outputVariables -> "Output Variable"
    this is BasicFBState && name in internalVariables -> "Internal Variable"
    this is BasicFBState && name == "\$ECC" -> "ECC State"
    else -> null
}

@JvmSynthetic
internal fun FBState.valueOfParameter(name: String): String? {
    return inputEvents[name]?.toString()
        ?: outputEvents[name]?.toString()
        ?: inputVariables[name]?.toString()
        ?: outputVariables[name]?.toString()
        ?: if (this is BasicFBState)
            if (name == "\$ECC") activeState
            else internalVariables[name]?.toString()
        else null
}

@JvmSynthetic
internal fun State.resolveValue(path: List<String>): String? {
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
        }
    }
    return result
}

@JvmSynthetic
internal fun State.resolveFB(path: List<String>): FBState {
    var cur: State = this
    if (path.isNotEmpty()) {
        for (fbInstanceName in path) {
            val childrenStates = (cur as? ResourceState)?.children ?: (cur as? CompositeFBState)?.children ?: break
            cur = childrenStates[fbInstanceName] ?: error("fb not found")
        }
    }
    return cur as FBState
}