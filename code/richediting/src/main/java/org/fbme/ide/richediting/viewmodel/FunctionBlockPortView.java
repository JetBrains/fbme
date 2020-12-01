package org.fbme.ide.richediting.viewmodel;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public class FunctionBlockPortView implements NetworkPortView {
    private final FunctionBlockView myOwner;
    private final int myPosition;
    private final EntryKind myKind;
    private final boolean myIsSource;
    @NotNull
    private final Declaration myTarget;

    public FunctionBlockPortView(FunctionBlockView owner, int position, EntryKind kind, boolean isSource, @NotNull Declaration target) {
        myOwner = owner;
        myPosition = position;
        myKind = kind;
        myIsSource = isSource;
        myTarget = target;
    }

    @NotNull
    public EntryKind getKind() {
        return myKind;
    }

    public int getPosition() {
        return myPosition;
    }

    public boolean isSource() {
        return myIsSource;
    }

    public Declaration getTarget() {
        return myTarget;
    }

    @NotNull
    @Override
    public FunctionBlockView getComponent() {
        return myOwner;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof FunctionBlockPortView)) {
            return false;
        }

        FunctionBlockPortView that = (FunctionBlockPortView) o;
        return Objects.equals(myOwner, that.myOwner) &&
                myPosition == that.myPosition &&
                myKind == that.myKind &&
                myIsSource == that.myIsSource;
    }

    @Override
    public int hashCode() {
        int result = 0;
        result = 31 * result + myOwner.hashCode();
        result = 31 * result + myPosition;
        result = 31 * result + myKind.hashCode();
        result = 31 * result + (myIsSource ? 1 : 0);
        return result;
    }
}
