package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Reference;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface DeviceDeclaration extends NamedDeclaration {

    @Nullable SystemDeclaration getSystem();

    @NotNull Reference<DeviceTypeDeclaration> getTypeReference();

    @NotNull List<ParameterAssignment> getParameters();

    @NotNull List<ResourceDeclaration> getResources();

    @Nullable FBNetwork getNetwork();
}
