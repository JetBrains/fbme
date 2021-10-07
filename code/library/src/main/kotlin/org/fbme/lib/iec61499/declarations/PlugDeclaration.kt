package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

interface PlugDeclaration : FunctionBlockDeclarationBase {
    override val container: Element?
    val typeReference: Reference<AdapterTypeDeclaration>
}