package org.fbme.lib.st.expressions;

import org.jetbrains.annotations.NotNull;

public interface Literal<Value> extends Expression {

    LiteralKind getKind();

    @NotNull Value getValue();

    void setValue(@NotNull Value value);
}
