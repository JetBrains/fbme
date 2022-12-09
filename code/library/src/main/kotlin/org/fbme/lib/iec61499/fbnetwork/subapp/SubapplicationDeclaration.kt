package org.fbme.lib.iec61499.fbnetwork.subapp

import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

interface SubapplicationDeclaration : FunctionBlockDeclarationBase {
    override val container: SubappNetwork?
    val typeReference: Reference<SubapplicationTypeDeclaration>
}
