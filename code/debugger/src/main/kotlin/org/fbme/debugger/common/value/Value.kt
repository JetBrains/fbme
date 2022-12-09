package org.fbme.debugger.common.value

import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.expressions.LiteralKind

sealed interface Value<V> {
    val value: V

    fun copy(): Value<V>

    abstract override fun toString(): String

    companion object {
        fun fromSTLiteral(literal: Literal<*>): Value<*> = when (checkNotNull(literal.kind)) {
            LiteralKind.BINARY_BOOL -> TODO("Not yet implemented")
            LiteralKind.BINARY_INT -> TODO("Not yet implemented")
            LiteralKind.BOOL -> BooleanValue(literal.value as Boolean)
            LiteralKind.DEC_INT -> IntValue(literal.value as Int)
            LiteralKind.HEX_INT -> TODO("Not yet implemented")
            LiteralKind.OCT_INT -> TODO("Not yet implemented")
            LiteralKind.STRING -> StringValue(literal.value as String)
            LiteralKind.WSTRING -> TODO("Not yet implemented")
            LiteralKind.TIME -> TimeValue(literal.value as String)
        }
    }
}

