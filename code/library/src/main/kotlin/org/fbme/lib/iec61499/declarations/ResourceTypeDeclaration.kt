package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.fbnetwork.FBNetwork

interface ResourceTypeDeclaration : DeclarationWithNetwork, RootElement {
    val parameters: MutableList<ParameterDeclaration>
    override val network: FBNetwork
    val instantiableFBTypes: MutableList<FBTypeReference>
}
