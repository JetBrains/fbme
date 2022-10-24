package org.fbme.lib.st.statements

import org.fbme.lib.common.Element
import org.fbme.lib.st.expressions.Expression

interface ElseIfClause : Element {
    override val container: IfStatement?
    var condition: Expression?
    val body: MutableList<Statement>
}
