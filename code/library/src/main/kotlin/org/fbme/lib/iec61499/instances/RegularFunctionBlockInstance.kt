package org.fbme.lib.iec61499.instances

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

/*package*/
internal class RegularFunctionBlockInstance(
    override val parent: NetworkInstance,
    override val declaration: FunctionBlockDeclarationBase
) : FunctionBlockInstance {
    override var containedNetwork: Instance? = null
    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is RegularFunctionBlockInstance) {
            return false
        }
        return declaration == other.declaration && parent == other.parent
    }

    override fun hashCode(): Int {
        return 31 * declaration.hashCode() + parent.hashCode()
    }

    init {
        val typeDeclaration = declaration.type.declaration
        containedNetwork = if (typeDeclaration is CompositeFBTypeDeclaration) {
            RegularNetworkInstance(this, typeDeclaration.network, typeDeclaration)
        } else if (typeDeclaration is SubapplicationTypeDeclaration) {
            RegularNetworkInstance(this, typeDeclaration.network, typeDeclaration)
        } else if (typeDeclaration is BasicFBTypeDeclaration) {
            RegularECCInstance(this, typeDeclaration.ecc, typeDeclaration)
        } else {
            null
        }
    }
}
