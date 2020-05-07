package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Reference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ParameterAssignment {

    @Nullable Declaration getContainer();

    @NotNull Reference<ParameterDeclaration> getParameterReference();

    @Nullable String getValue();

    void remove();
}
