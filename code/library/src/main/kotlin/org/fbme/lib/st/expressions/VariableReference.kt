package org.fbme.lib.st.expressions

import org.fbme.lib.common.Reference

interface VariableReference : Variable {
    val reference: Reference<VariableDeclaration>
}
