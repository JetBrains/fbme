package org.fbme.lib.st.statements

import org.fbme.lib.st.expressions.Expression

interface CaseStatement : Statement {
    var expression: Expression?
    val cases: MutableList<CaseElement>
    val elseCase: List<Statement>?
    fun addElseCase(): MutableList<Statement>
    fun removeElseCase()
}
