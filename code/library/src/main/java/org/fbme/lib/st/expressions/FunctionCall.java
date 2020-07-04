package org.fbme.lib.st.expressions;

import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface FunctionCall extends Expression {

    @NotNull String getFunctionName();

    void setFunctionName(@NotNull String name);

    @NotNull List<Expression> getActualParameters();
}
