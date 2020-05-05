package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.Identifier;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ParameterDescriptor {

    @Nullable
    ParameterDeclaration getDeclaration();

    @NotNull
    String getParameterName();

    @NotNull
    Identifier getIdentifier();
}
