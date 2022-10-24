package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Reference

interface ResourceTypeReference : ContainedElement {
    val resourceType: Reference<ResourceTypeDeclaration>
    override val container: DeviceTypeDeclaration?
}
