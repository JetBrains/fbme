package org.fbme.lib.iec61499.ecc

import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

interface ECC : Element {
    val states: MutableList<StateDeclaration>
    val transitions: MutableList<StateTransition>
    override val container: BasicFBTypeDeclaration
}
