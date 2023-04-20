package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.fbnetwork.FBNetwork

interface DeviceDeclaration : Declaration, ContainedElement {
    override val container: SystemDeclaration?
    val typeReference: Reference<DeviceTypeDeclaration>
    val parameters: MutableList<ParameterAssignment>
    val resources: MutableList<ResourceDeclaration>
    val network: FBNetwork?
}
