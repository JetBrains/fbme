package org.fbme.lib.iec61499.fbnetwork;


import java.util.Collections;
import java.util.Set;

public interface InterfaceEndpoint extends FBNetworkComponent, FBPortIdentity {

    int getPosition();

    String getName();

    @Override
    default @org.jetbrains.annotations.NotNull Set<FBPortIdentity> getPorts() {
        return Collections.singleton(this);
    }

    @Override
    default FBNetworkComponent getComponent() {
        return this;
    }
}
