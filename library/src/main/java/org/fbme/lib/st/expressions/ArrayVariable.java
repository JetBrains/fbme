package org.fbme.lib.st.expressions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface ArrayVariable extends Variable {

    @Nullable Variable getSubscribedVariable();

    void setSubscribedVariable(@Nullable Variable variable);

    @NotNull List<Expression> getSubscripts();
}
