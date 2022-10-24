package org.fbme.lib.iec61499.declarations

import org.fbme.lib.iec61499.fbnetwork.FBNetwork

interface CompositeFBTypeDeclaration : FBTypeDeclaration, WithNetwork {
    override val network: FBNetwork
}
