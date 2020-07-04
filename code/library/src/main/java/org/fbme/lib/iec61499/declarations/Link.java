package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceHierarchy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface Link extends ContainedElement {

    @Nullable SystemDeclaration getContainer();

    @NotNull List<ParameterAssignment> getParameters();

    @NotNull CompositeReference<ResourceHierarchy> getResourceReference();

    @NotNull Reference<SegmentDeclaration> getSegmentReference();
}
