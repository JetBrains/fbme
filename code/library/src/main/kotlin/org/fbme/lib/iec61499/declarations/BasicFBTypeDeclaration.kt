package org.fbme.lib.iec61499.declarations

import org.fbme.lib.iec61499.ecc.ECC

interface BasicFBTypeDeclaration : FBTypeDeclaration {
    val ecc: ECC
    val internalVariables: MutableList<ParameterDeclaration>
    val algorithms: MutableList<AlgorithmDeclaration>
}
