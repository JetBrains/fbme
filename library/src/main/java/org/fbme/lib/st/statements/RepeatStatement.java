package org.fbme.lib.st.statements;


import org.fbme.lib.st.expressions.Expression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface RepeatStatement extends Statement {

    @Nullable Expression getCondition();

    void setCondition(@Nullable Expression expression);

    @NotNull List<Statement> getBody();
}
