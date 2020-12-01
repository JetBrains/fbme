package org.fbme.ide.richediting.viewmodel;

import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public class BrokenPortView implements NetworkComponentView, NetworkPortView {

    private NetworkPortView myOpposite = null;

    @NotNull
    @Override
    public EntryKind getKind() {
        return myOpposite.getKind();
    }

    @Override
    public boolean isEditable() {
        return false;
    }

    @NotNull
    @Override
    public NetworkComponentView getComponent() {
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof BrokenPortView)) {
            return false;
        }

        BrokenPortView that = (BrokenPortView) o;
        return Objects.equals(myOpposite, that.myOpposite);
    }

    @Override
    public int hashCode() {
        return myOpposite.hashCode();
    }

    public void setOpposite(NetworkPortView opposite) {
        myOpposite = opposite;
    }
}
