package org.fbme.lib.st.statements

import org.fbme.lib.st.expressions.Expression

interface WhileStatement : Statement {
    var condition: Expression?
    val body: MutableList<Statement>
}
