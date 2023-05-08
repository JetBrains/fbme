package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration

interface EventDeclaration : Declaration, ContainedElement {
    val associations: MutableList<EventAssociation>
    override val container: Declaration?
}
