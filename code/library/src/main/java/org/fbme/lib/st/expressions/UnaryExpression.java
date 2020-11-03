package org.fbme.lib.st.expressions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface UnaryExpression extends Expression {

    @NotNull UnaryOperation getOperation();

    @Nullable Expression getInnerExpression();

    void setInnerExpression(@NotNull Expression expression);
}
