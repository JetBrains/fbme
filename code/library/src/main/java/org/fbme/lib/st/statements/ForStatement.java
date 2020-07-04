package org.fbme.lib.st.statements;

import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ForStatement extends Statement {

    @NotNull ControlVariableDeclaration getControlVariable();

    @NotNull List<Statement> getStatements();
}
