package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork

interface DeclarationWithNetwork : Declaration {
    val network: FBNetwork
}