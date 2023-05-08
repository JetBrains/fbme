package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

interface FunctionBlockDeclaration : FunctionBlockDeclarationBase {
    override val container: FBNetwork?
    val typeReference: Reference<FBTypeDeclaration>
}
