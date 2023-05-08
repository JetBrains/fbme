package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.ecc.ECC

data class RegularECCInstance(
    override val parent: Instance?,
    override val eCCDeclaration: ECC,
    override val declaration: Declaration
) : ECCInstance
