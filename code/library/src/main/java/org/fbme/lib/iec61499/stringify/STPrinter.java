package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.st.expressions.*;
import org.fbme.lib.st.statements.*;

import java.util.List;

public class STPrinter {

    private String myIndent = "";
    private final StringBuilder myBuilder = new StringBuilder();

    private void append(String value) {
        myBuilder.append(value);
    }

    private void appendIndent() {
        myBuilder.append(myIndent);
    }

    private void appendNewLine() {
        myBuilder.append("\n");
    }

    private void withIndent(Runnable runnable) {
        String oldIndent = myIndent;
        myIndent += "  ";
        try {
            runnable.run();
        } finally {
            myIndent = oldIndent;
        }
    }

    private void appendExpression(Expression expression) {
        if (expression instanceof BinaryExpression) {
            var binaryExpression = (BinaryExpression) expression;
            appendExpression(binaryExpression.getLeftExpression());
            append(" ");
            append(binaryExpression.getOperation().getAlias());
            append(" ");
            appendExpression(binaryExpression.getRightExpression());
            return;
        }
        if (expression instanceof UnaryExpression) {
            var unaryExpression = (UnaryExpression) expression;
            var operation = unaryExpression.getOperation();
            append(operation.getAlias());
            append(operation.isSpaced() ? " " : "");
            appendExpression(unaryExpression.getInnerExpression());
            return;
        }
        if (expression instanceof FunctionCall) {
            var functionCall = (FunctionCall) expression;
            append(functionCall.getFunctionName());
            append("(");
            List<Expression> actualParameters = functionCall.getActualParameters();
            Expression last = actualParameters.get(actualParameters.size() - 1);
            for (Expression actualParameter : actualParameters) {
                appendExpression(actualParameter);
                if (actualParameter != last) {
                    append(", ");
                }
            }
            append(")");
            return;
        }
        if (expression instanceof ParenthesisExpression) {
            var parenthesisExpression = (ParenthesisExpression) expression;
            append("(");
            appendExpression(parenthesisExpression.getInnerExpression());
            append(")");
            return;
        }
        if (expression instanceof Variable) {
            appendVariable((Variable) expression);
            return;
        }
        if (expression instanceof Literal) {
            appendLiteral((Literal<?>) expression);
            return;
        }
        throw new IllegalArgumentException("Unrecognized expression " + expression);
    }

    private void appendVariable(Variable variable) {
        if (variable instanceof ArrayVariable) {
            var arrayVariable = (ArrayVariable) variable;
            appendVariable(arrayVariable.getSubscribedVariable());
            append("[");
            List<Expression> subscripts = arrayVariable.getSubscripts();
            Expression last = subscripts.get(subscripts.size() - 1);
            for (Expression subscript : subscripts) {
                appendExpression(subscript);
                if (subscript != last) {
                    append(", ");
                }
            }
            append("]");
            return;
        }
        if (variable instanceof VariableReference) {
            append(((VariableReference) variable).getReference().getPresentation());
            return;
        }
        throw new IllegalArgumentException("Unrecognized variable " + variable);
    }


    private void appendLiteral(Literal<?> literal) {
        var value = literal.getValue();
        switch (literal.getKind()) {
            case BINARY_BOOL:
                append(value == Boolean.TRUE ? "BOOL#1" : "BOOL#0");
                break;
            case BINARY_INT:
                append("2#" + Integer.toString((int) value, 2));
                break;
            case BOOL:
                append(value == Boolean.TRUE ? "TRUE" : "FALSE");
                break;
            case DEC_INT:
                append(Integer.toString((int) value));
                break;
            case HEX_INT:
                append("16#" + Integer.toString((int) value, 16));
                break;
            case OCT_INT:
                append("8#" + Integer.toString((int) value, 8));
                break;
            case STRING:
                append("'" + value + "'");
                break;
            case WSTRING:
                append("\"" + value + "\"");
                break;
            case TIME:
                append("T#" + value);
                break;
            default:
                throw new IllegalArgumentException("Unrecognized literal " + literal);
        }
    }

    private void appendIndentStatementList(List<Statement> statements) {
        withIndent(() -> {
            appendStatementList(statements);
        });
    }

    private void appendStatementList(List<Statement> statements) {
        for (Statement statement : statements) {
            appendStatement(statement);
        }
    }

    private void appendStatement(Statement statement) {
        appendIndent();
        try {
            if (statement instanceof AssignmentStatement) {
                var assignmentStatement = (AssignmentStatement) statement;
                appendVariable(assignmentStatement.getVariable());
                append(" := ");
                appendExpression(assignmentStatement.getExpression());
                return;
            }
            if (statement instanceof CaseStatement) {
                var caseStatement = (CaseStatement) statement;
                append("CASE ");
                appendExpression(caseStatement.getExpression());
                append(" OF ");
                appendNewLine();
                withIndent(() -> {
                    for (CaseElement element : caseStatement.getCases()) {
                        appendIndent();
                        appendLiteral(element.getLiteral());
                        append(" ->");
                        appendNewLine();
                        withIndent(() -> {
                            appendStatementList(element.getStatements());
                        });
                    }
                    List<Statement> elseCase = caseStatement.getElseCase();
                    if (elseCase != null) {
                        append("ELSE ->");
                        appendNewLine();
                        withIndent(() -> {
                            appendStatementList(elseCase);
                        });
                    }
                });
                appendIndent();
                append("END_CASE");
                return;
            }
            if (statement instanceof EmptyStatement) {
                return;
            }
            if (statement instanceof ExitStatement) {
                append("EXIT");
                return;
            }
            if (statement instanceof ForStatement) {
                var forStatement = (ForStatement) statement;
                ControlVariableDeclaration controlVariable = forStatement.getControlVariable();
                append("FOR ");
                append(controlVariable.getName());
                append(" := ");
                appendExpression(controlVariable.getBeginExpression());
                append(" TO ");
                appendExpression(controlVariable.getEndExpression());
                Expression stepExpression = controlVariable.getStepExpression();
                if (stepExpression != null) {
                    append(" BY ");
                    appendExpression(stepExpression);
                }
                append(" DO");
                appendNewLine();
                withIndent(() -> {
                    appendStatementList(forStatement.getStatements());
                });
                appendIndent();
                append("END_FOR");
            }
            if (statement instanceof IfStatement) {
                var ifStatement = (IfStatement) statement;
                append("IF ");
                appendExpression(ifStatement.getCondition());
                append(" THEN");
                appendNewLine();
                appendIndentStatementList(ifStatement.getThenClause());
                for (ElseIfClause elseIfClause : ifStatement.getElseIfClauses()) {
                    appendIndent();
                    append("ELSIF ");
                    appendExpression(elseIfClause.getCondition());
                    append(" THEN");
                    appendNewLine();
                    appendIndentStatementList(elseIfClause.getBody());
                }
                List<Statement> elseClause = ifStatement.getElseClause();
                if (elseClause != null) {
                    appendIndent();
                    append("ELSE");
                    appendNewLine();
                    appendIndentStatementList(elseClause);
                }
                appendIndent();
                append("END_IF");
            }
            if (statement instanceof RepeatStatement) {
                var repeatStatement = (RepeatStatement) statement;
                append("REPEAT");
                appendNewLine();
                withIndent(() -> {
                    appendStatementList(repeatStatement.getBody());
                });
                appendIndent();
                append("UNITL ");
                appendExpression(repeatStatement.getCondition());
                append(" END_REPEAT");
            }
            if (statement instanceof ReturnStatement) {
                append("RETURN");
            }
            if (statement instanceof WhileStatement) {
                var whileStatement = (WhileStatement) statement;
                append("WHILE ");
                appendExpression(whileStatement.getCondition());
                append(" DO");
                appendNewLine();
                withIndent(() -> {
                    appendStatementList(whileStatement.getBody());
                });
                appendIndent();
                append(" END_WHILE");
            }
        } finally {
            append(";");
            appendNewLine();
        }
    }


    public static String printStatementList(List<Statement> statements) {
        STPrinter printer = new STPrinter();
        printer.appendStatementList(statements);
        return printer.toString();
    }

    public static String printExpression(Expression expression) {
        STPrinter printer = new STPrinter();
        printer.appendExpression(expression);
        return printer.toString();
    }

    public static String printLiteral(Literal<?> literal) {
        STPrinter printer = new STPrinter();
        printer.appendLiteral(literal);
        return printer.toString();
    }

    @Override
    public String toString() {
        return myBuilder.toString();
    }
}
