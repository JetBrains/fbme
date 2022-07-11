package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration

class ResourceState : State {
    val children: Map<String, FBState>

    constructor(typeDeclaration: ResourceTypeDeclaration) {
        children = typeDeclaration.network.allComponents.associate { component ->
            val componentName = component.name
            val componentState = when (val componentDeclaration = component.type.declaration!!) {
                is BasicFBTypeDeclaration -> BasicFBState(componentDeclaration)
                is CompositeFBTypeDeclaration -> CompositeFBState(componentDeclaration)
                else -> error("unexpected type")
            }

            Pair(componentName, componentState)
        }
    }

    constructor(resourceState: ResourceState) {
        children = resourceState.children.mapValues {
            when (val state = it.value) {
                is CompositeFBState -> CompositeFBState(state)
                is BasicFBState -> BasicFBState(state)
                else -> error("Unexpected child type")
            }
        }
    }

    override fun copy(): ResourceState {
        return ResourceState(this)
    }
}