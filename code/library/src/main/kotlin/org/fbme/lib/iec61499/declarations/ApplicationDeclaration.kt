package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork

interface ApplicationDeclaration : Declaration, ContainedElement {
    val network: SubappNetwork
    override val container: SystemDeclaration
}
