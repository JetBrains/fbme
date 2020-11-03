package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.DeclarationPath;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.List;

public final class ResourceHierarchy implements DeclarationPath {

    @NotNull private final DeviceDeclaration myDevice;

    @NotNull private final ResourceDeclaration myResource;

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

    @Override
    public @NotNull List<Declaration> getDeclarations() {
        return Arrays.asList(myDevice, myResource);
    }
}
