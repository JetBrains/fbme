package org.fbme.lib.st.expressions

enum class UnaryOperation(val alias: String, val luaAlias: String, val isSpaced: Boolean) {
    NOT("NOT", "not",true), NEG("-", "-", false);

    override fun toString(): String {
        return alias
    }
}
