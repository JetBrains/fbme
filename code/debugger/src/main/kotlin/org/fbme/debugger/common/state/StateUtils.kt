package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.*

fun FBState.typeOfParameter(name: String) = when {
    name in inputEvents -> "Input Event"
    name in outputEvents -> "Output Event"
    name in inputVariables -> "Input Variable"
    name in outputVariables -> "Output Variable"
    this is BasicFBState && name in internalVariables -> "Internal Variable"
    this is BasicFBState && name == "\$ECC" -> "ECC State"
    else -> error("Parameter not found")
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

internal fun WithNetwork.getChildrenStates(): Map<String, FBStateImpl> {
    return network.allComponents.associate { component ->
        val componentName = component.name
        val componentDeclaration = component.type.declaration as FBTypeDeclaration
        val componentState = when (componentDeclaration) {
            is BasicFBTypeDeclaration -> BasicFBState(componentDeclaration)
            is CompositeFBTypeDeclaration -> CompositeFBState(componentDeclaration)
            is ServiceInterfaceFBTypeDeclaration -> ServiceFBState(componentDeclaration)
            else -> error("unexpected type")
        }

        Pair(componentName, componentState)
    }
}