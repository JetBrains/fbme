package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.*

class ResourceState : State {
    val children: Map<String, FBStateImpl>

    constructor(typeDeclaration: ResourceDeclaration) {
        children = typeDeclaration.network.allComponents.associate { component ->
            val componentName = component.name
            val componentState = when (val componentDeclaration = component.type.declaration!!) {
                is BasicFBTypeDeclaration -> BasicFBState(componentDeclaration)
                is CompositeFBTypeDeclaration -> CompositeFBState(componentDeclaration)
                is ServiceInterfaceFBTypeDeclaration -> ServiceFBState(componentDeclaration)
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
                is ServiceFBState -> ServiceFBState(state)
                else -> error("Unexpected child type")
            }
        }
    }

    override fun copy(): ResourceState {
        return ResourceState(this)
    }
}