package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.descriptors.FBType
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

interface FBTypeDeclaration : FBInterfaceDeclarationWithAdapters, RootElement {
    val typeDescriptor: FBTypeDescriptor
        get() = FBType(this)
}
