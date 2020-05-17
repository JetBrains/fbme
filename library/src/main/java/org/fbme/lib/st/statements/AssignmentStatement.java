package org.fbme.lib.st.statements;

import org.fbme.lib.st.expressions.Expression;
import org.fbme.lib.st.expressions.Variable;
import org.jetbrains.annotations.Nullable;

public interface AssignmentStatement extends Statement {

    @Nullable Variable getVariable();

    void setVariable(@Nullable Variable variable);

    @Nullable Expression getExpression();

    void setExpression(@Nullable Expression expression);
}
