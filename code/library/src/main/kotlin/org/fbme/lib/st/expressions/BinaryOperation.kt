package org.fbme.lib.st.expressions

enum class BinaryOperation(val alias: String) {
    ADD("+"), AMP("&"), AND("AND"), DIV("/"), EQ("="), GT(">"), GTE(">="), LT("<"), LTE("<="), MOD("MOD"), MUL("*"), NEQ(
        "<>"
    ),
    OR("OR"), POW("**"), SUB("-"), XOR("XOR");

    override fun toString(): String {
        return alias
    }
}
