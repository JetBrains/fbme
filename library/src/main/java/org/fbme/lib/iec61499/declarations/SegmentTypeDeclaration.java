package org.fbme.lib.iec61499.declarations;

import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SegmentTypeDeclaration extends NamedDeclaration {

    @NotNull List<ParameterDeclaration> getParameters();
}
