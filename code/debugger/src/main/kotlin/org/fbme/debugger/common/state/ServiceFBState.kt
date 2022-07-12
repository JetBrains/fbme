package org.fbme.debugger.common.state

import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ServiceFBState : FBStateImpl {
    constructor(typeDeclaration: ServiceInterfaceFBTypeDeclaration) : super(typeDeclaration) {
    }

    constructor(serviceFBState: ServiceFBState) : super(serviceFBState) {
    }

    override fun copy(): ServiceFBState {
        return ServiceFBState(this)
    }
}