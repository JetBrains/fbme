package org.fbme.lib.iec61499.declarations.extention

import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.descriptors.InternalPlugType
import org.fbme.lib.iec61499.descriptors.InternalSocketType
import org.fbme.lib.iec61499.fbnetwork.CustomNetworkComponentProvider

interface AdapterNetworkDeclaration : CustomNetworkComponentProvider, DeclarationWithNetwork {
    override val container: ExtendedAdapterTypeDeclaration

    val internalFbPlugDescriptor: FBTypeDescriptor
        get() = InternalPlugType(container, this)

    val internalFbSocketDescriptor: FBTypeDescriptor
        get() = InternalSocketType(container, this)

    fun networkType(): NetworkType =
        if (container.leftNetwork == null || container.rightNetwork == null) {
            NetworkType.SINGLE
        } else if (container.rightNetwork == this) {
            NetworkType.RIGHT
        } else if (container.leftNetwork == this) {
            NetworkType.LEFT
        } else {
            error("Container doesn't contain this network")
        }

    enum class NetworkType(
        val extendSocket: Boolean,
        val extendPlug: Boolean,
    ) {
        LEFT(true, false),
        RIGHT(false, true),
        SINGLE(true, true),
    }
}
