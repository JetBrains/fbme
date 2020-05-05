package org.fbme.lib.iec61499.instances;


import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface NetworkInstance extends Instance {

    @NotNull
    FBNetwork getNetworkDeclaration();

    @Nullable
    FunctionBlockInstance getChild(@NotNull FunctionBlockDeclarationBase component);

    static NetworkInstance createForCompositeFBType(CompositeFBTypeDeclaration compositeFBType) {
        return new RegularNetworkInstance(null, compositeFBType.getNetwork(), compositeFBType);
    }

    static NetworkInstance createForSubapplicationType(SubapplicationTypeDeclaration subapplicationType) {
        return new RegularNetworkInstance(null, subapplicationType.getNetwork(), subapplicationType);
    }

    static NetworkInstance createForResourceType(ResourceTypeDeclaration resourceType) {
        return new RegularNetworkInstance(null, resourceType.getNetwork(), resourceType);
    }

    static NetworkInstance createForImplicitResourceOfDeviceType(DeviceTypeDeclaration deviceType) {
        return new RegularNetworkInstance(null, deviceType.getNetwork(), deviceType);
    }

    static NetworkInstance createForApplication(ApplicationDeclaration application) {
        return new RegularNetworkInstance(null, application.getNetwork(), application);
    }

    static NetworkInstance createForResource(ResourceDeclaration resource) {
        return new RegularNetworkInstance(null, resource.getNetwork(), resource);
    }

    static NetworkInstance createForImplicitResourceOfDevice(DeviceDeclaration device) {
        return new RegularNetworkInstance(null, device.getNetwork(), device);
    }

    static NetworkInstance createForDeclaration(Declaration declaration) {
        if (declaration instanceof CompositeFBTypeDeclaration) {
            CompositeFBTypeDeclaration compositeFBType = ((CompositeFBTypeDeclaration) declaration);
            return createForCompositeFBType(compositeFBType);
        } else if (declaration instanceof SubapplicationTypeDeclaration) {
            SubapplicationTypeDeclaration subappType = ((SubapplicationTypeDeclaration) declaration);
            return createForSubapplicationType(subappType);
        } else if (declaration instanceof ResourceTypeDeclaration) {
            ResourceTypeDeclaration resourceType = ((ResourceTypeDeclaration) declaration);
            return createForResourceType(resourceType);
        } else if (declaration instanceof DeviceTypeDeclaration) {
            DeviceTypeDeclaration deviceType = ((DeviceTypeDeclaration) declaration);
            return createForImplicitResourceOfDeviceType(deviceType);
        } else if (declaration instanceof ApplicationDeclaration) {
            ApplicationDeclaration app = ((ApplicationDeclaration) declaration);
            return createForApplication(app);
        } else if (declaration instanceof ResourceDeclaration) {
            ResourceDeclaration resource = ((ResourceDeclaration) declaration);
            return createForResource(resource);
        } else if (declaration instanceof DeviceDeclaration) {
            DeviceDeclaration device = ((DeviceDeclaration) declaration);
            return createForImplicitResourceOfDevice(device);
        }
        return null;
    }
}
