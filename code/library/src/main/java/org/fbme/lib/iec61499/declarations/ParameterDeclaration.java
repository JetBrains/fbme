package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.st.expressions.Literal;
import org.fbme.lib.st.expressions.VariableDeclaration;
import org.fbme.lib.st.types.DataType;
import org.jetbrains.annotations.Nullable;

public interface ParameterDeclaration extends VariableDeclaration, ContainedElement {

    @Nullable Declaration getContainer();

    @Nullable DataType getType();

    void setType(@Nullable DataType type);

    @Nullable Literal<?> getInitialValue();

    void setInitialValue(@Nullable Literal<?> literal);
}
