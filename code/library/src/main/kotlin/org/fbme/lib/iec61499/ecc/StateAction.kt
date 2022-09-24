package org.fbme.lib.iec61499.ecc

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath

interface StateAction : ContainedElement {
    override val container: StateDeclaration?
    val event: CompositeReference<PortPath<EventDeclaration>>
    val algorithm: Reference<AlgorithmDeclaration>
}
