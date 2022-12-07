package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class ResourceState : State {
    val children: Map<String, FBStateImpl>

    constructor(typeDeclaration: ResourceDeclaration) {
        children = typeDeclaration.getChildrenStates()
    }

    constructor(resourceState: ResourceState) {
        children = resourceState.children.mapValues { it.value.copy() }
    }

    override fun copy() = ResourceState(this)
}