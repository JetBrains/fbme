package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class FBPortDescriptor {

    private final @NotNull String myName;

    private final @NotNull EntryKind myConnectionKind;

    private final int myPosition;

    private final boolean myIsInput;

    private final boolean myIsValid;

    private final @Nullable Declaration myDeclaration;

    public FBPortDescriptor(@NotNull String name, @NotNull EntryKind connectionKind, int position, boolean isInput, boolean isValid, @Nullable Declaration declaration) {
        myName = name;
        myConnectionKind = connectionKind;
        myPosition = position;
        myIsInput = isInput;
        myIsValid = isValid;
        myDeclaration = declaration;
    }

    public @NotNull String getName() {
        return myName;
    }

    public @NotNull EntryKind getConnectionKind() {
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

    public @Nullable Declaration getDeclaration() {
        return myDeclaration;
    }
}
