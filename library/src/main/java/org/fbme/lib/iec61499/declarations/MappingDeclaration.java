package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.CompositeReference;
import org.fbme.lib.iec61499.declarations.hierarchies.ApplicationFunctionBlockHierarchy;
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceFunctionBlockHierarchy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface MappingDeclaration extends Declaration {

    @Nullable SystemDeclaration getContainer();

    @NotNull CompositeReference<ApplicationFunctionBlockHierarchy> getApplicationFBReference();

    @NotNull CompositeReference<ResourceFunctionBlockHierarchy> getResourceFBReference();

    void remove();
}
