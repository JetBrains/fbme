package org.fbme.lib.st.expressions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface BinaryExpression extends Expression {

    @NotNull BinaryOperation getOperation();

    @Nullable Expression getLeftExpression();

    void setLeftExpression(@Nullable Expression expression);

    @Nullable Expression getRightExpression();

    void setRightExpression(@Nullable Expression expression);
}
