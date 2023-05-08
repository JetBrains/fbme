package org.fbme.lib.st.statements

import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.expressions.Variable

interface AssignmentStatement : Statement {
    var variable: Variable?
    var expression: Expression?
}
