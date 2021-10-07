package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element

interface EventDeclaration : Declaration, ContainedElement {
    val associations: MutableList<EventAssociation>
    override val container: Element?
}