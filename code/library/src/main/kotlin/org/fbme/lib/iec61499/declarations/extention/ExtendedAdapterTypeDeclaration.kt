package org.fbme.lib.iec61499.declarations.extention

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.DeclarationWithInterfaceSection
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.ExtendedPlugType
import org.fbme.lib.iec61499.descriptors.ExtendedSocketType
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

interface ExtendedAdapterTypeDeclaration : AdapterTypeDeclaration {
    var leftNetwork: AdapterNetworkDeclaration?
    var rightNetwork: AdapterNetworkDeclaration?

    override val plugTypeDescriptor: FBTypeDescriptor
        get() = ExtendedPlugType(this)

    override val socketTypeDescriptor: FBTypeDescriptor
        get() = ExtendedSocketType(this)

    var inputRouter: ParameterDeclaration?
    var outputRouter: ParameterDeclaration?

    var internalFbSocketInterface: DeclarationWithInterfaceSection?
    var internalFbPlugInterface: DeclarationWithInterfaceSection?
    var internalNetworksInterface: DeclarationWithInterfaceSection?
}
