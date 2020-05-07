package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Reference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface EventAssociation {

    @Nullable EventDeclaration getEvent();

    @NotNull Reference<ParameterDeclaration> getParameterReference();

    void remove();
}
