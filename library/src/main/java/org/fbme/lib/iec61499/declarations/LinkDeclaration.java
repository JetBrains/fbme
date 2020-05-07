package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.CompositeReference;
import org.fbme.lib.iec61499.Reference;
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceHierarchy;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface LinkDeclaration {

    @NotNull CompositeReference<ResourceHierarchy> getResourceReference();

    @NotNull Reference<SegmentDeclaration> getSegmentReference();

    @NotNull List<ParameterAssignment> getParameters();
}
