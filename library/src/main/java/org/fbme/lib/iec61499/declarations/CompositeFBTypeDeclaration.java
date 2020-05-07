package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

public interface CompositeFBTypeDeclaration extends FBTypeDeclaration {

    @NotNull FBNetwork getNetwork();
}
