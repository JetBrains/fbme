package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.RootElement;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface DeviceTypeDeclaration extends Declaration, RootElement {

    @NotNull List<ParameterDeclaration> getParameters();

    @Nullable FBNetwork getNetwork();

    @NotNull List<ResourceDeclaration> getResources();

    @NotNull List<ResourceTypeReference> getInstantiableResourceTypes();
}
