package org.fbme.lib.iec61499.declarations;

import org.jetbrains.annotations.Nullable;

public interface ParameterDeclaration extends NamedDeclaration {

    @Nullable Declaration getContainer();

    void remove();
}
