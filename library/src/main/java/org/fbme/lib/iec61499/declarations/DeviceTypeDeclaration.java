package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface DeviceTypeDeclaration extends NamedDeclaration {

    @NotNull
    List<ParameterDeclaration> getParameters();

    @Nullable
    FBNetwork getNetwork();

    @NotNull
    List<ResourceDeclaration> getResources();
}
