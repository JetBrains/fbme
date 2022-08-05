package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement

interface CATBlockTypeDeclaration : Declaration, RootElement {
    val hmiInterface: HMIInterfaceTypeDeclaration
    val subCATs: List<SubCATDeclaration>
    var blockDeclaration: CompositeFBTypeDeclaration
}