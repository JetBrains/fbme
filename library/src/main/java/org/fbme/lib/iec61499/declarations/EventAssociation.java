package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Identifier;
import org.fbme.lib.iec61499.descriptors.ParameterDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface EventAssociation {

    @Nullable
    EventDeclaration getEvent();

    @NotNull
    ParameterDescriptor getParameter();

    void setParameter(@NotNull Identifier identifier);

    void setParameter(@NotNull ParameterDeclaration parameter);

    void remove();
}
