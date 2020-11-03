package org.fbme.lib.common;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Reference<DeclarationT extends Declaration> {

    @Nullable DeclarationT getTarget();

    @NotNull Identifier getIdentifier();

    @NotNull String getPresentation();

    void setIdentifier(@NotNull Identifier identifier);

    default void setTarget(@NotNull DeclarationT declaration) {
        setIdentifier(declaration.getIdentifier());
    }

    default void setTargetName(@NotNull String name) {
        setIdentifier(new StringIdentifier(name));
    }
}
