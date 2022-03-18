package org.fbme.debugger.common.state

import org.fbme.debugger.common.extractInitialValue
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

abstract class FBStateImpl : FBState {
    override val inputEvents: MutableMap<String, Int>
    override val outputEvents: MutableMap<String, Int>
    override val inputVariables: Map<String, Value<Any?>>
    override val outputVariables: Map<String, Value<Any?>>

    constructor(typeDeclaration: FBTypeDeclaration) {
        inputEvents = typeDeclaration.inputEvents
            .associate { event -> Pair(event.name, 0) }.toMutableMap()
        outputEvents = typeDeclaration.outputEvents
            .associate { event -> Pair(event.name, 0) }.toMutableMap()
        inputVariables = typeDeclaration.inputParameters
            .associate { variable -> Pair(variable.name, variable.extractInitialValue()) }
        outputVariables = typeDeclaration.outputParameters
            .associate { variable -> Pair(variable.name, variable.extractInitialValue()) }
    }
}