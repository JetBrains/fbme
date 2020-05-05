package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

public class FBPortDescriptor {

    @NotNull
    private final String myName;

    @NotNull
    private final EntryKind myConnectionKind;

    private final int myPosition;

    private final boolean myIsInput;

    private final boolean myIsValid;

    public FBPortDescriptor(@NotNull String name, @NotNull EntryKind connectionKind, int position, boolean isInput, boolean isValid) {
        myName = name;
        myConnectionKind = connectionKind;
        myPosition = position;
        myIsInput = isInput;
        myIsValid = isValid;
    }

    @NotNull
    public String getName() {
        return myName;
    }

    @NotNull
    public EntryKind getConnectionKind() {
        return myConnectionKind;
    }

    public int getPosition() {
        return myPosition;
    }

    public boolean isInput() {
        return myIsInput;
    }

    public boolean isValid() {
        return myIsValid;
    }
}
