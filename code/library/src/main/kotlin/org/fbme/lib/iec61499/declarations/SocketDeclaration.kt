package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

interface SocketDeclaration : FunctionBlockDeclarationBase {
    override val container: FBInterfaceDeclarationWithAdapters?
    val typeReference: Reference<AdapterTypeDeclaration>
}
