package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Reference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface SegmentDeclaration extends Declaration, ContainedElement {

    @Nullable SystemDeclaration getContainer();

    @NotNull List<ParameterAssignment> getParameters();

    @NotNull Reference<SegmentTypeDeclaration> getTypeReference();
}
