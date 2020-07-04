package org.fbme.lib.st.expressions;

import org.jetbrains.annotations.NotNull;

public interface ParenthesisExpression extends Expression {

    @NotNull Expression getInnerExpression();

    void setInnerExpression(@NotNull Expression expression);
}
