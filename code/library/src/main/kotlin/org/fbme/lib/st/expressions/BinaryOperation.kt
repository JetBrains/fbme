package org.fbme.lib.st.expressions

enum class BinaryOperation(val alias: String, val luaAlias: String) {
    ADD("+", "+"), AMP("&", "&"), AND("AND", "and"), DIV("/", "/"),
    EQ("=", "=="), GT(">", ">"), GTE(">=", ">="), LT("<", "<"),
    LTE("<=", "<="), MOD("MOD", "%"), MUL("*", "*"), NEQ("<>", "~="),
    OR("OR", "or"), POW("**", "^"), SUB("-", "-"), XOR("XOR", "~");

    override fun toString(): String {
        return alias
    }
}
