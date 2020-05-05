package org.fbme.lib.iec61499.fbnetwork;

public interface FBNetworkConnection {

    FBNetwork getNetwork();

    ConnectionPath getPath();

    void setPath(ConnectionPath path);

    FBPortIdentity getSourcePort();

    void setSourcePort(FBPortIdentity port);

    FBPortIdentity getTargetPort();

    void setTargetPort(FBPortIdentity port);

    EntryKind getKind();

    void remove();
}
