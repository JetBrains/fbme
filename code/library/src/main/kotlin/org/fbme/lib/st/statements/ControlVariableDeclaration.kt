package org.fbme.lib.st.statements

import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.expressions.VariableDeclaration

interface ControlVariableDeclaration : VariableDeclaration {
    override val container: ForStatement
    var beginExpression: Expression?
    var endExpression: Expression?
    var stepExpression: Expression?
}
