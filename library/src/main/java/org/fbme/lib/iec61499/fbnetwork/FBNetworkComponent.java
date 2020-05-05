package org.fbme.lib.iec61499.fbnetwork;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Set;

public interface FBNetworkComponent {

    @Nullable FBNetwork getNetwork();

    @NotNull Set<FBPortIdentity> getPorts();
}
