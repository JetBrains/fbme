package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Reference;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SegmentDeclaration extends NamedDeclaration {

    @NotNull List<ParameterAssignment> getParameters();

    @NotNull Reference<SegmentTypeDeclaration> getTypeReference();
}
