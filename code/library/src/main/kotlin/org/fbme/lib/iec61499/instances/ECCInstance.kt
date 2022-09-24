package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

interface ECCInstance : Instance {
    val eCCDeclaration: ECC

    companion object {
        @JvmStatic
        fun createForBasicFBType(basicFBType: BasicFBTypeDeclaration, parent: Instance?): ECCInstance {
            return RegularECCInstance(parent, basicFBType.ecc, basicFBType)
        }

        @JvmStatic
        @JvmOverloads
        fun createForDeclaration(declaration: Declaration, parent: Instance? = null): ECCInstance {
            var decl: Declaration? = declaration
            if (declaration is FunctionBlockDeclarationBase) {
                decl = declaration.type.declaration
            }
            if (decl is BasicFBTypeDeclaration) {
                return createForBasicFBType(decl, parent)
            }
            error("Unknown kind of declaration: " + decl!!.javaClass)
        }
    }
}
