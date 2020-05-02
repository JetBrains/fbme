package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.ResourceTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ResourceDeclaration extends NamedDeclaration {

    @NotNull
    Declaration getContainer();

    @NotNull
    FBNetwork getNetwork();

    @NotNull
    ResourceTypeDescriptor getType();

    @NotNull
    List<ParameterAssigment> getParameters();
}
