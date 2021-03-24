package org.fbme.ide.richediting.adapters.fb;

import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;

public class FBPortBase implements FBPort {
    private final EntryKind connectionKind;

    protected FBPortBase(FBPortDescriptor port) {
        this.connectionKind = port.getConnectionKind();
    }

    public EntryKind getConnectionKind() {
        return connectionKind;
    }
}
