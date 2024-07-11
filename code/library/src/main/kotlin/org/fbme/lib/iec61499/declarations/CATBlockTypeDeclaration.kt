package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement
import org.fbme.lib.common.Reference


interface CATBlockTypeDeclaration : Declaration, RootElement {
    val hmiInterface: Reference<HMIInterfaceTypeDeclaration>
    val blockDeclaration: Reference<CompositeFBTypeDeclaration>
    var interfaceFileName: String
}