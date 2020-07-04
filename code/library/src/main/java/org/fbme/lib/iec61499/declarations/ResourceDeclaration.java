package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ResourceDeclaration extends Declaration, ContainedElement {

    @NotNull Declaration getContainer();

    @NotNull FBNetwork getNetwork();

    @NotNull Reference<ResourceTypeDeclaration> getTypeReference();

    @NotNull List<ParameterAssignment> getParameters();
}
