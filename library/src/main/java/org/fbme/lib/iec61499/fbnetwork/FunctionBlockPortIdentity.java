package org.fbme.lib.iec61499.fbnetwork;

import org.jetbrains.annotations.NotNull;

public class FunctionBlockPortIdentity implements FBPortIdentity {
    private final int myPosition;
    private final EntryKind myKind;
    private final boolean myIsSource;
    private final FunctionBlockDeclarationBase myView;
    private final String myName;
    private final boolean myIsValid;

    public FunctionBlockPortIdentity(@NotNull FunctionBlockDeclarationBase view, int position, EntryKind kind, boolean isSource, String name, boolean isValid) {
        myPosition = position;
        myKind = kind;
        myIsSource = isSource;
        myView = view;
        myName = name;
        myIsValid = isValid;
    }

    @Override
    public FunctionBlockDeclarationBase getComponent() {
        return myView;
    }

    @Override
    public EntryKind getKind() {
        return myKind;
    }

    public int getPosition() {
        return myPosition;
    }

    @Override
    public boolean isSource() {
        return myIsSource;
    }

    public String getName() {
        return myName;
    }

    public boolean isValid() {
        return myIsValid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if ((!(o instanceof FunctionBlockPortIdentity))) {
            return false;
        }

        FunctionBlockPortIdentity that = (FunctionBlockPortIdentity) o;
        if (myIsSource != that.myIsSource) {
            return false;
        }
        if (!(myView.equals(that.myView))) {
            return false;
        }
        if (myPosition != that.myPosition) {
            return false;
        }
        return myKind == that.myKind;
    }

    @Override
    public int hashCode() {
        int result = ((myIsSource ? 17 : 53));
        result = 31 * result + myView.hashCode();
        result = 31 * result + myPosition;
        result = 31 * result + myKind.hashCode();
        return result;
    }
}
