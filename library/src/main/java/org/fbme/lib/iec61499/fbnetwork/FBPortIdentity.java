package org.fbme.lib.iec61499.fbnetwork;

public interface FBPortIdentity {

    FBNetworkComponent getComponent();

    boolean isSource();

    EntryKind getKind();
}
