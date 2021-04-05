package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;

public class PortBase implements Port {
    private final EntryKind connectionKind;

    public PortBase(FBPortDescriptor port) {
        this.connectionKind = port.getConnectionKind();
    }

    public EntryKind getConnectionKind() {
        return connectionKind;
    }
}
