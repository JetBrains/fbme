package org.fbme.lib.st.expressions

enum class UnaryOperation(val alias: String, val isSpaced: Boolean) {
    NOT("NOT", true), NEG("-", false);

    override fun toString(): String {
        return alias
    }
}
