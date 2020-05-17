package org.fbme.lib.common;

import org.jetbrains.annotations.NotNull;

public interface Declaration extends Element {

    @NotNull Identifier getIdentifier();

    @NotNull String getName();

    void setName(@NotNull String name);
}
