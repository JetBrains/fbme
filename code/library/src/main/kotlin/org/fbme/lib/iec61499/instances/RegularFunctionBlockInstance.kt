package org.fbme.lib.iec61499.instances

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

internal data class RegularFunctionBlockInstance(
        override val parent: NetworkInstance,
        override val declaration: FunctionBlockDeclarationBase
) : FunctionBlockInstance {

    override var containedNetwork = when (val typeDeclaration = declaration.type.declaration) {
        is CompositeFBTypeDeclaration -> RegularNetworkInstance(this, typeDeclaration.network, typeDeclaration)
        is SubapplicationTypeDeclaration -> RegularNetworkInstance(this, typeDeclaration.network, typeDeclaration)
        is BasicFBTypeDeclaration -> RegularECCInstance(this, typeDeclaration.ecc, typeDeclaration)
        else -> null
    }
}
