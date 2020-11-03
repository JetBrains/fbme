package org.fbme.lib.st;

import org.fbme.lib.common.Identifier;
import org.fbme.lib.st.expressions.*;
import org.fbme.lib.st.statements.*;
import org.fbme.lib.st.types.DerivedType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface STFactory {

    @NotNull ArrayVariable createArrayVariable();

    @NotNull BinaryExpression createBinaryExpression(@NotNull BinaryOperation operation);

    @NotNull FunctionCall createFunctionCall();

    @NotNull Literal<?> createLiteral(@NotNull LiteralKind kind);

    @NotNull ParenthesisExpression createParenthesisExpression();

    @NotNull UnaryExpression createUnaryExpression(@NotNull UnaryOperation operation);

    @NotNull VariableReference createVariableReference();

    @NotNull AssignmentStatement createAssignmentStatement();

    @NotNull CaseElement createCaseElement();

    @NotNull CaseStatement createCaseStatement();

    @NotNull ElseIfClause createElseIfClause();

    @NotNull EmptyStatement createEmptyStatement();

    @NotNull ExitStatement createExitStatement();

    @NotNull ForStatement createForStatement();

    @NotNull IfStatement createIfStatement();

    @NotNull RepeatStatement createRepeatStatement();

    @NotNull ReturnStatement createReturnStatement();

    @NotNull WhileStatement createWhileStatement();

    @NotNull DerivedType createDerivedType(@NotNull Identifier identifier, @Nullable String debugName);
}
