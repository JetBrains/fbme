package org.fbme.lib.st.statements

import org.fbme.lib.st.expressions.Expression

interface IfStatement : Statement {
    var condition: Expression?
    val thenClause: MutableList<Statement>
    val elseIfClauses: MutableList<ElseIfClause>
    val elseClause: List<Statement>?
    fun addElseClause(): MutableList<Statement>
    fun removeElseClause()
}
