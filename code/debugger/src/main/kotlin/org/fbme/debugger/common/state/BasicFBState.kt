package org.fbme.debugger.common.state

import org.fbme.debugger.common.extractInitialValue
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class BasicFBState : FBStateImpl {
    val internalVariables: Map<String, Value<Any?>>
    var activeState = "START"

    constructor(typeDeclaration: BasicFBTypeDeclaration) : super(typeDeclaration) {
        internalVariables = typeDeclaration.internalVariables
            .associate { variable -> Pair(variable.name, variable.extractInitialValue()) }
    }
}