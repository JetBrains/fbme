package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.RootElement;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SegmentTypeDeclaration extends Declaration, RootElement {

    @NotNull List<ParameterDeclaration> getParameters();
}
