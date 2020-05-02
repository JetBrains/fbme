package org.fbme.lib.iec61499.fbnetwork;

import org.jetbrains.annotations.NotNull;

import java.util.Set;

public interface FBNetwork {

    boolean isEditable();

    @NotNull
    Set<FBNetworkComponent> getComponents();

    @NotNull
    Set<FBNetworkConnection> getConnections();

    @NotNull
    FBNetworkConnection addConnection(@NotNull FBPortIdentity sourcePort, @NotNull FBPortIdentity targetPort);
}
