package org.fbme.lib.st.statements

interface ForStatement : Statement {
    val controlVariable: ControlVariableDeclaration
    val statements: MutableList<Statement>
}
