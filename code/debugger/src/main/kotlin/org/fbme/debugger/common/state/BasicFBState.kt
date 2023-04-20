package org.fbme.debugger.common.state

import org.fbme.debugger.common.extractInitialValue
import org.fbme.debugger.common.value.Value
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class BasicFBState : FBState {
    val internalVariables: MutableMap<String, Value<*>>
    var activeState = START_STATE

    constructor(typeDeclaration: BasicFBTypeDeclaration) : super(typeDeclaration) {
        internalVariables = typeDeclaration.internalVariables
            .associate { variable -> Pair(variable.name, variable.extractInitialValue()) }.toMutableMap()
    }

    constructor(basicFBState: BasicFBState) : super(basicFBState) {
        internalVariables = basicFBState.internalVariables.mapValues { it.value.copy() }.toMutableMap()
        activeState = basicFBState.activeState
    }

    override fun copy() = BasicFBState(this)

    companion object {
        const val START_STATE = "START"
    }
}