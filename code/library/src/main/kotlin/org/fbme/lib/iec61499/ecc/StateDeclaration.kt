package org.fbme.lib.iec61499.ecc

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration

interface StateDeclaration : Declaration, ContainedElement {
    override val container: ECC?
    var x: Int
    var y: Int
    val actions: MutableList<StateAction>
}
