package org.fbme.lib.iec61499.declarations;

import org.jetbrains.annotations.NotNull;

public interface NamedDeclaration extends Declaration {

    @NotNull String getName();

    void setName(@NotNull String name);
}
