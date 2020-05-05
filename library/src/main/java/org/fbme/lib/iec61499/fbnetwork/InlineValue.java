package org.fbme.lib.iec61499.fbnetwork;

import org.jetbrains.annotations.NotNull;

import java.util.Collections;
import java.util.Set;

public interface InlineValue extends FBNetworkComponent, FBPortIdentity {

    @NotNull
    FBPortIdentity getOpppositePort();

    @Override
    default @NotNull Set<FBPortIdentity> getPorts() {
        return Collections.singleton(this);
    }

    @Override
    default FBNetworkComponent getComponent() {
        return this;
    }

    @Override
    default boolean isSource() {
        return true;
    }

    @Override
    default EntryKind getKind() {
        return EntryKind.DATA;
    }
}
