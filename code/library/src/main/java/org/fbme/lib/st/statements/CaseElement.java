package org.fbme.lib.st.statements;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.st.expressions.Literal;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface CaseElement extends ContainedElement {

    @Nullable CaseStatement getContainer();

    @Nullable Literal getLiteral();

    void setLiteral(@Nullable Literal literal);

    @NotNull List<Statement> getStatements();
}
