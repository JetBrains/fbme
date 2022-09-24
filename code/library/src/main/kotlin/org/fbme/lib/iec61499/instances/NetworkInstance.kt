package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

interface NetworkInstance : Instance {
    val networkDeclaration: FBNetwork
    fun getChild(component: FunctionBlockDeclarationBase): FunctionBlockInstance?

    companion object {
        @JvmStatic
        @JvmOverloads
        fun createForCompositeFBType(
            compositeFBType: CompositeFBTypeDeclaration,
            parent: Instance? = null
        ): NetworkInstance {
            return RegularNetworkInstance(parent, compositeFBType.network, compositeFBType)
        }

        @JvmStatic
        fun createForSubapplicationType(
            subapplicationType: SubapplicationTypeDeclaration,
            parent: Instance?
        ): NetworkInstance {
            return RegularNetworkInstance(parent, subapplicationType.network, subapplicationType)
        }

        @JvmStatic
        fun createForResourceType(resourceType: ResourceTypeDeclaration, parent: Instance?): NetworkInstance {
            return RegularNetworkInstance(parent, resourceType.network, resourceType)
        }

        @JvmStatic
        fun createForImplicitResourceOfDeviceType(
            deviceType: DeviceTypeDeclaration,
            parent: Instance?
        ): NetworkInstance {
            val networkDeclaration = deviceType.network
            checkNotNull(networkDeclaration)
            return RegularNetworkInstance(parent, networkDeclaration, deviceType)
        }

        @JvmStatic
        @JvmOverloads
        fun createForApplication(application: ApplicationDeclaration, parent: Instance? = null): NetworkInstance {
            return RegularNetworkInstance(parent, application.network, application)
        }

        @JvmStatic
        @JvmOverloads
        fun createForResource(resource: ResourceDeclaration, parent: Instance? = null): NetworkInstance {
            return RegularNetworkInstance(parent, resource.network, resource)
        }

        @JvmStatic
        fun createForImplicitResourceOfDevice(device: DeviceDeclaration, parent: Instance?): NetworkInstance {
            val networkDeclaration = device.network
            checkNotNull(networkDeclaration)
            return RegularNetworkInstance(parent, networkDeclaration, device)
        }

        @JvmStatic
        @JvmOverloads
        fun createForDeclaration(declaration: Declaration, parent: Instance? = null): NetworkInstance {
            var decl: Declaration? = declaration
            if (declaration is FunctionBlockDeclarationBase) {
                decl = declaration.type.declaration
            }
            return when (decl) {
                is CompositeFBTypeDeclaration -> createForCompositeFBType(decl, parent)
                is SubapplicationTypeDeclaration -> createForSubapplicationType(decl, parent)
                is ResourceTypeDeclaration -> createForResourceType(decl, parent)
                is DeviceTypeDeclaration -> createForImplicitResourceOfDeviceType(decl, parent)
                is ApplicationDeclaration -> createForApplication(decl, parent)
                is ResourceDeclaration -> createForResource(decl, parent)
                is DeviceDeclaration -> createForImplicitResourceOfDevice(decl, parent)
                else -> throw IllegalArgumentException("Unknown kind of declaration: " + decl!!.javaClass)
            }
        }
    }
}
