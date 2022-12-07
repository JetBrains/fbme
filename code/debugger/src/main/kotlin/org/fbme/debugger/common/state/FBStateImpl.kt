package org.fbme.debugger.common.state

import org.fbme.debugger.common.extractInitialValue
import org.fbme.debugger.common.value.Value
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

sealed class FBStateImpl : FBState {
    final override val inputEvents: MutableMap<String, Int>
    final override val outputEvents: MutableMap<String, Int>
    final override val inputVariables: MutableMap<String, Value<*>>
    final override val outputVariables: MutableMap<String, Value<*>>

    constructor(typeDeclaration: FBTypeDeclaration) {
        inputEvents = typeDeclaration.inputEvents
            .associate { event -> Pair(event.name, 0) }.toMutableMap()
        outputEvents = typeDeclaration.outputEvents
            .associate { event -> Pair(event.name, 0) }.toMutableMap()
        inputVariables = typeDeclaration.inputParameters
            .associate { variable -> Pair(variable.name, variable.extractInitialValue()) }.toMutableMap()
        outputVariables = typeDeclaration.outputParameters
            .associate { variable -> Pair(variable.name, variable.extractInitialValue()) }.toMutableMap()
    }

    constructor(fbState: FBState) {
        inputEvents = fbState.inputEvents.toMutableMap()
        outputEvents = fbState.outputEvents.toMutableMap()
        inputVariables = fbState.inputVariables.mapValues { it.value.copy() }.toMutableMap()
        outputVariables = fbState.outputVariables.mapValues { it.value.copy() }.toMutableMap()
    }

    abstract override fun copy(): FBStateImpl
}