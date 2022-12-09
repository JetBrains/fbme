package org.fbme.lib.iec61499.declarations

import org.fbme.lib.iec61499.fbnetwork.FBNetwork

interface CompositeFBTypeDeclaration : FBTypeDeclaration, DeclarationWithNetwork {
    override val network: FBNetwork
}
