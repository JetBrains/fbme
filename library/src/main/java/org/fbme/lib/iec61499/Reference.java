package org.fbme.lib.iec61499;

import org.fbme.lib.iec61499.declarations.NamedDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Reference<DeclarationT extends NamedDeclaration> {

    @Nullable DeclarationT getTarget();

    @NotNull Identifier getIdentifier();

    @NotNull String getPresentation();

    void setTarget(@NotNull DeclarationT declaration);

    void setIdentifier(@NotNull Identifier identifier);
}
