package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Reference;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ResourceDeclaration extends NamedDeclaration {

    @NotNull Declaration getContainer();

    @NotNull FBNetwork getNetwork();

    @NotNull Reference<ResourceTypeDeclaration> getTypeReference();

    @NotNull List<ParameterAssignment> getParameters();
}
