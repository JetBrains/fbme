package org.fbme.debugger.common.state

fun FBState.typeOfParameter(name: String): String? {
    return if (inputEvents.contains(name)) "Input Event"
    else if (outputEvents.contains(name)) "Output Event"
    else if (inputVariables.contains(name)) "Input Variable"
    else if (outputVariables.contains(name)) "Output Variable"
    else if (this is BasicFBState && internalVariables.contains(name)) "Internal Variable"
    else if (this is BasicFBState && name == "\$ECC") "ECC State"
    else null
}

fun FBState.valueOfParameter(name: String): String? {
    return inputEvents[name]?.toString()
        ?: outputEvents[name]?.toString()
        ?: inputVariables[name]?.toString()
        ?: outputVariables[name]?.toString()
        ?: if (this is BasicFBState)
            if (name == "\$ECC") activeState
            else internalVariables[name]?.toString()
        else null
}

fun FBState.typeOfValue(name: String): String? {
    return if (inputEvents.contains(name)) "Int"
    else if (outputEvents.contains(name)) "Int"
    else if (inputVariables.contains(name)) inputVariables[name]!!.value!!::class.simpleName
    else if (outputVariables.contains(name)) outputVariables[name]!!.value!!::class.simpleName
    else if (this is BasicFBState && internalVariables.contains(name)) internalVariables[name]!!.value!!::class.simpleName
    else if (this is BasicFBState && name == "\$ECC") "String"
    else null
}