package org.fbme.lib.st

import org.fbme.lib.common.Identifier
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.*
import org.fbme.lib.st.types.DerivedType

interface STFactory {
    fun createArrayVariable(): ArrayVariable
    fun createBinaryExpression(operation: BinaryOperation): BinaryExpression
    fun createFunctionCall(): FunctionCall
    fun createLiteral(kind: LiteralKind): Literal<*>
    fun createParenthesisExpression(): ParenthesisExpression
    fun createUnaryExpression(operation: UnaryOperation): UnaryExpression
    fun createVariableReference(): VariableReference
    fun createAssignmentStatement(): AssignmentStatement
    fun createCaseElement(): CaseElement
    fun createCaseStatement(): CaseStatement
    fun createElseIfClause(): ElseIfClause
    fun createEmptyStatement(): EmptyStatement
    fun createExitStatement(): ExitStatement
    fun createForStatement(): ForStatement
    fun createIfStatement(): IfStatement
    fun createRepeatStatement(): RepeatStatement
    fun createReturnStatement(): ReturnStatement
    fun createWhileStatement(): WhileStatement
    fun createDerivedType(identifier: Identifier, debugName: String?): DerivedType
}
