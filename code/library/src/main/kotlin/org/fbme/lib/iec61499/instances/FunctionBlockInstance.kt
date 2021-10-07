package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration

interface FunctionBlockInstance : Instance {
    override val parent: Instance?
    override val declaration: Declaration
    val containedNetwork: Instance?
}