package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Reference

interface FBTypeReference : ContainedElement {
    val fBType: Reference<FBTypeDeclaration>
    override val container: ResourceTypeDeclaration?
}
