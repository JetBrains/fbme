package org.fbme.lib.iec61499.declarations.hierarchies

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.DeclarationPath
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

class ResourceFunctionBlockHierarchy(
    val resourceHierarchy: ResourceHierarchy,
    val functionBlock: FunctionBlockDeclaration
) : DeclarationPath {
    override val declarations: List<Declaration>
        get() = listOf<Declaration>(resourceHierarchy.device, resourceHierarchy.resource, functionBlock)
}
