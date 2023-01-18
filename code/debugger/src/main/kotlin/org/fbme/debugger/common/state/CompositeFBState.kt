package org.fbme.debugger.common.state

import org.fbme.debugger.common.getChildrenStates
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeFBState : FBState {
    val children: Map<String, FBState>

    constructor(typeDeclaration: CompositeFBTypeDeclaration) : super(typeDeclaration) {
        children = typeDeclaration.getChildrenStates()
    }

    constructor(compositeFBState: CompositeFBState) : super(compositeFBState) {
        children = compositeFBState.children.mapValues { it.value.copy() }
    }

    override fun copy() = CompositeFBState(this)
}