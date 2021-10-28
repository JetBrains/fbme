package org.fbme.lib.iec61499.ecc

import org.fbme.lib.common.Element

interface ECC : Element {
    val states: MutableList<StateDeclaration>
    val transitions: MutableList<StateTransition>
}