package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.descriptors.FBType
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork

interface SubapplicationTypeDeclaration : FBInterfaceDeclarationWithAdapters, RootElement {
    val network: SubappNetwork
    val typeDescriptor: FBTypeDescriptor
        get() = FBType(this)
}
