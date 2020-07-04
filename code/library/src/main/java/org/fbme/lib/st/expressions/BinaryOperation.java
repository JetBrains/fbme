package org.fbme.lib.st.expressions;

public enum BinaryOperation {
    ADD("+"),
    AMP("&"),
    AND("AND"),
    DIV("/"),
    EQ("="),
    GT(">"),
    GTE(">="),
    LT("<"),
    LTE("<="),
    MOD("MOD"),
    MUL("*"),
    NEQ("<>"),
    OR("OR"),
    POW("**"),
    SUB("-"),
    XOR("XOR");

    private final String myAlias;

    BinaryOperation(String alias) {
        myAlias = alias;
    }

    public String getAlias() {
        return myAlias;
    }

    @Override
    public String toString() {
        return myAlias;
    }
}
