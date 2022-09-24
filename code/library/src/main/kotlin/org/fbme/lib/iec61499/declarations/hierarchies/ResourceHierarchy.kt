package org.fbme.lib.iec61499.declarations.hierarchies

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.DeclarationPath
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class ResourceHierarchy(val device: DeviceDeclaration, val resource: ResourceDeclaration) : DeclarationPath {
    override val declarations: List<Declaration>
        get() = listOf<Declaration>(device, resource)
}
