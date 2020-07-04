package org.fbme.lib.st.statements;

import org.fbme.lib.st.expressions.Expression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface CaseStatement extends Statement {

    @Nullable Expression getExpression();

    void setExpression(@Nullable Expression expression);

    @NotNull List<CaseElement> getCases();

    @Nullable List<Statement> getElseCase();

    @NotNull List<Statement> addElseCase();

    void removeElseCase();
}
