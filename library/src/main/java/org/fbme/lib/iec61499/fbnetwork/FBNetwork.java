package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.iec61499.declarations.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface FBNetwork {

    @NotNull List<FBNetworkComponent> getComponents();

    @NotNull List<FBNetworkConnection> getConnections();

    @NotNull List<FunctionBlockDeclaration> getFunctionBlocks();

    @NotNull List<FBNetworkConnection> getDataConnections();

    @NotNull List<FBNetworkConnection> getEventConnections();

    @NotNull List<FBNetworkConnection> getAdapterConnections();

    @Nullable FBNetwork getPrototype();

    static @Nullable FBNetwork extractNetwork(@Nullable Declaration declaration) {
        if (declaration instanceof CompositeFBTypeDeclaration) {
            return ((CompositeFBTypeDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof SubapplicationTypeDeclaration) {
            return ((SubapplicationTypeDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof ApplicationDeclaration) {
            return ((ApplicationDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof ResourceDeclaration) {
            return ((ResourceDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof ResourceTypeDeclaration) {
            return ((ResourceTypeDeclaration) declaration).getNetwork();
        }
        return null;
    }
}
