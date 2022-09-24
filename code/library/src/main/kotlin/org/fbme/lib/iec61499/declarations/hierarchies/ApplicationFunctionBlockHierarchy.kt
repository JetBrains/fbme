package org.fbme.lib.iec61499.declarations.hierarchies

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.DeclarationPath
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

class ApplicationFunctionBlockHierarchy(
    val application: ApplicationHierarchy,
    val functionBlock: FunctionBlockDeclaration
) : DeclarationPath {
    override val declarations: List<Declaration>
        get() {
            return application.declarations.plus(functionBlock)
        }
}
