package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.descriptors.PlugType
import org.fbme.lib.iec61499.descriptors.SocketType

interface AdapterTypeDeclaration : FBInterfaceDeclaration, Declaration, RootElement {
    val plugTypeDescriptor: FBTypeDescriptor
        get() = PlugType(this)
    val socketTypeDescriptor: FBTypeDescriptor
        get() = SocketType(this)
}
