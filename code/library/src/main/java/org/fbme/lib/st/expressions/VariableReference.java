package org.fbme.lib.st.expressions;

import org.fbme.lib.common.Reference;

public interface VariableReference extends Variable {

    Reference<VariableDeclaration> getReference();
}
