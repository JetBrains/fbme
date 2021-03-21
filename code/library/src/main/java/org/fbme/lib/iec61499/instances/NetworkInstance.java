package org.fbme.lib.iec61499.instances;


import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface NetworkInstance extends Instance {

    @NotNull FBNetwork getNetworkDeclaration();

    @Nullable FunctionBlockInstance getChild(@NotNull FunctionBlockDeclarationBase component);

    static @NotNull NetworkInstance createForCompositeFBType(@NotNull CompositeFBTypeDeclaration compositeFBType, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, compositeFBType.getNetwork(), compositeFBType);
    }

    static @NotNull NetworkInstance createForCompositeFBType(@NotNull CompositeFBTypeDeclaration compositeFBType) {
        return createForCompositeFBType(compositeFBType, null);
    }

    static @NotNull NetworkInstance createForSubapplicationType(@NotNull SubapplicationTypeDeclaration subapplicationType, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, subapplicationType.getNetwork(), subapplicationType);
    }

    static @NotNull NetworkInstance createForResourceType(@NotNull ResourceTypeDeclaration resourceType, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, resourceType.getNetwork(), resourceType);
    }

    static @NotNull NetworkInstance createForImplicitResourceOfDeviceType(@NotNull DeviceTypeDeclaration deviceType, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, deviceType.getNetwork(), deviceType);
    }

    static @NotNull NetworkInstance createForApplication(@NotNull ApplicationDeclaration application, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, application.getNetwork(), application);
    }

    static @NotNull NetworkInstance createForApplication(@NotNull ApplicationDeclaration application) {
        return createForApplication(application, null);
    }

    static @NotNull NetworkInstance createForResource(@NotNull ResourceDeclaration resource, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, resource.getNetwork(), resource);
    }

    static @NotNull NetworkInstance createForResource(@NotNull ResourceDeclaration resource) {
        return createForResource(resource, null);
    }

    static @NotNull NetworkInstance createForImplicitResourceOfDevice(@NotNull DeviceDeclaration device, @Nullable Instance parent) {
        return new RegularNetworkInstance(parent, device.getNetwork(), device);
    }

    static @NotNull NetworkInstance createForDeclaration(@NotNull Declaration declaration, @Nullable Instance parent) {
        Declaration decl = declaration;
        if (declaration instanceof FunctionBlockDeclarationBase) {
            decl = ((FunctionBlockDeclarationBase) declaration).getType().getDeclaration();
        }
        if (decl instanceof CompositeFBTypeDeclaration) {
            CompositeFBTypeDeclaration compositeFBType = ((CompositeFBTypeDeclaration) decl);
            return createForCompositeFBType(compositeFBType, parent);
        } else if (decl instanceof SubapplicationTypeDeclaration) {
            SubapplicationTypeDeclaration subappType = ((SubapplicationTypeDeclaration) decl);
            return createForSubapplicationType(subappType, parent);
        } else if (decl instanceof ResourceTypeDeclaration) {
            ResourceTypeDeclaration resourceType = ((ResourceTypeDeclaration) decl);
            return createForResourceType(resourceType, parent);
        } else if (decl instanceof DeviceTypeDeclaration) {
            DeviceTypeDeclaration deviceType = ((DeviceTypeDeclaration) decl);
            return createForImplicitResourceOfDeviceType(deviceType, parent);
        } else if (decl instanceof ApplicationDeclaration) {
            ApplicationDeclaration app = ((ApplicationDeclaration) decl);
            return createForApplication(app, parent);
        } else if (decl instanceof ResourceDeclaration) {
            ResourceDeclaration resource = ((ResourceDeclaration) decl);
            return createForResource(resource, parent);
        } else if (decl instanceof DeviceDeclaration) {
            DeviceDeclaration device = ((DeviceDeclaration) decl);
            return createForImplicitResourceOfDevice(device, parent);
        }
        throw new IllegalArgumentException("Unknown kind of declaration: " + decl.getClass());
    }

    static @NotNull NetworkInstance createForDeclaration(@NotNull Declaration declaration) {
        return createForDeclaration(declaration, null);
    }
}
