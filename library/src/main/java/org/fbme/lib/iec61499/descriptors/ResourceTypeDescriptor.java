package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface ResourceTypeDescriptor {

    @Nullable
    ResourceTypeDeclaration getDeclaration();

    @NotNull
    String getTypeName();

    @NotNull
    List<ParameterDescriptor> getParameters();
}
