package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.Element
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

interface FunctionBlockDeclaration : FunctionBlockDeclarationBase {
    override val container: Element?
    val typeReference: Reference<FBTypeDeclaration>
}