package org.fbme.lib.st.statements;

import org.fbme.lib.common.Element;
import org.fbme.lib.st.expressions.Expression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface ElseIfClause extends Element {

    @Nullable IfStatement getContainer();

    @Nullable Expression getCondition();

    void setCondition(@Nullable Expression expression);

    @NotNull List<Statement> getBody();
}
