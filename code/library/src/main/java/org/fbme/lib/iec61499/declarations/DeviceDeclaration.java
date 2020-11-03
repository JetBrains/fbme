package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface DeviceDeclaration extends Declaration, ContainedElement {

    @Nullable SystemDeclaration getContainer();

    @NotNull Reference<DeviceTypeDeclaration> getTypeReference();

    @NotNull List<ParameterAssignment> getParameters();

    @NotNull List<ResourceDeclaration> getResources();

    @Nullable FBNetwork getNetwork();
}
