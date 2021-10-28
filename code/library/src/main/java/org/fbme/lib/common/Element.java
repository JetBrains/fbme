package org.fbme.lib.common;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Element {

    @Nullable Element getContainer();

    @NotNull
    Element copy();
}
