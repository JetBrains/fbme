package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.RootElement;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ResourceTypeDeclaration extends Declaration, RootElement {

    @NotNull List<ParameterDeclaration> getParameters();

    @NotNull FBNetwork getNetwork();

    @NotNull List<FBTypeReference> getInstantiableFBTypes();
}
