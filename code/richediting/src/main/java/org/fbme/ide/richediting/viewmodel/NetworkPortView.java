package org.fbme.ide.richediting.viewmodel;

import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

public interface NetworkPortView {

    @NotNull
    EntryKind getKind();

    @NotNull
    NetworkComponentView getComponent();
}
