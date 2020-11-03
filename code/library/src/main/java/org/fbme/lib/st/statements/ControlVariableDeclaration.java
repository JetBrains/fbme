package org.fbme.lib.st.statements;

import org.fbme.lib.st.expressions.Expression;
import org.fbme.lib.st.expressions.VariableDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ControlVariableDeclaration extends VariableDeclaration {

    @NotNull ForStatement getContainer();

    @Nullable Expression getBeginExpression();

    void setBeginExpression(@Nullable Expression expression);

    @Nullable Expression getEndExpression();

    void setEndExpression(@Nullable Expression expression);

    @Nullable Expression getStepExpression();

    void setStepExpression(@Nullable Expression expression);
}
