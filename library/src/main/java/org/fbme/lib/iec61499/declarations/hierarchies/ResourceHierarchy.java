package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.jetbrains.annotations.NotNull;

public final class ResourceHierarchy {

    @NotNull final DeviceDeclaration myDevice;

    @NotNull final ResourceDeclaration myResource;

    public ResourceHierarchy(@NotNull DeviceDeclaration device, @NotNull ResourceDeclaration resource) {
        myDevice = device;
        myResource = resource;
    }

    public @NotNull DeviceDeclaration getDevice() {
        return myDevice;
    }

    public @NotNull ResourceDeclaration getResource() {
        return myResource;
    }
}
