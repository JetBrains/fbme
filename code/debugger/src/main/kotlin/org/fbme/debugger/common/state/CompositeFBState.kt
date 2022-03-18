package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeFBState : FBStateImpl {
    val children: Map<String, FBState>

    constructor(typeDeclaration: CompositeFBTypeDeclaration) : super(typeDeclaration) {
        children = typeDeclaration.network.allComponents
            .associate { component ->
                val componentName = component.name
                val componentState = when (val componentDeclaration = component.type.declaration!!) {
                    is BasicFBTypeDeclaration -> BasicFBState(componentDeclaration)
                    is CompositeFBTypeDeclaration -> CompositeFBState(componentDeclaration)
                    else -> error("unexpected type")
                }

                Pair(componentName, componentState)
            }
    }
}