package org.fbme.lib.iec61499.fbnetwork;

import java.util.Set;

public interface FBNetworkComponent {

    boolean isEditable();

    FBNetwork getNetwork();

    Set<FBPortIdentity> getPorts();

    void remove();
}
