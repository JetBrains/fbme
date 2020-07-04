package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Reference;
import org.fbme.lib.st.expressions.Literal;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ParameterAssignment extends ContainedElement {

    @Nullable Declaration getContainer();

    @NotNull Reference<ParameterDeclaration> getParameterReference();

    @Nullable Literal<?> getValue();

    void setValue(@Nullable Literal<?> value);
}
