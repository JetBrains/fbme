package org.fbme.lib.iec61499.instances

import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

interface FunctionBlockInstance : Instance {
    override val parent: NetworkInstance
    override val declaration: FunctionBlockDeclarationBase
    val containedNetwork: Instance?
}
