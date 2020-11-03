package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.iec61499.declarations.hierarchies.ApplicationFunctionBlockHierarchy;
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceFunctionBlockHierarchy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Mapping extends ContainedElement {

    @Nullable SystemDeclaration getContainer();

    @NotNull CompositeReference<ApplicationFunctionBlockHierarchy> getApplicationFBReference();

    @NotNull CompositeReference<ResourceFunctionBlockHierarchy> getResourceFBReference();
}
