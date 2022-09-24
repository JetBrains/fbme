package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Reference

interface EventAssociation : ContainedElement {
    override val container: EventDeclaration?
    val parameterReference: Reference<ParameterDeclaration>
}
