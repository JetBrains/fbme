package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class CompositeFBState : FBStateImpl {
    val children: Map<String, FBState>

    constructor(typeDeclaration: CompositeFBTypeDeclaration) : super(typeDeclaration) {
        children = typeDeclaration.network.allComponents.associate { component ->
            val componentName = component.name
            val componentDeclaration = component.type.declaration!!
            val componentState = when (componentDeclaration) {
                is BasicFBTypeDeclaration -> BasicFBState(componentDeclaration)
                is CompositeFBTypeDeclaration -> CompositeFBState(componentDeclaration)
                is ServiceInterfaceFBTypeDeclaration -> ServiceFBState(componentDeclaration)
                else -> error("unexpected type")
            }

            Pair(componentName, componentState)
        }
    }

    constructor(compositeFBState: CompositeFBState) : super(compositeFBState) {
        children = compositeFBState.children.mapValues {
            when (val state = it.value) {
                is CompositeFBState -> CompositeFBState(state)
                is BasicFBState -> BasicFBState(state)
                is ServiceFBState -> ServiceFBState(state)
                else -> error("Unexpected child type")
            }
        }
    }

    override fun copy(): CompositeFBState {
        return CompositeFBState(this)
    }
}