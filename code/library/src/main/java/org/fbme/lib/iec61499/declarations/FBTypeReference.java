package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Reference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FBTypeReference extends ContainedElement {

    @NotNull Reference<FBTypeDeclaration> getFBType();

    @Nullable ResourceTypeDeclaration getContainer();
}
