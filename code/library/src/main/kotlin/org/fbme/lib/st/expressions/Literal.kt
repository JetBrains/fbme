package org.fbme.lib.st.expressions

interface Literal<Value> : Expression {
    val kind: LiteralKind?
    var value: Value

    fun getPresentation(): String {
        return when(kind) {
            LiteralKind.BINARY_BOOL -> if (value as Boolean) "BOOL#1" else "BOOL#0"
            LiteralKind.BINARY_INT -> "2#" + (value as Int).toString(2)
            LiteralKind.BOOL -> if (value as Boolean) "TRUE" else "FALSE"
            LiteralKind.DEC_INT -> (value as Int).toString()
            LiteralKind.HEX_INT -> "16#" + (value as Int).toString(16)
            LiteralKind.OCT_INT -> "8#" + (value as Int).toString(8)
            LiteralKind.STRING -> "'${value as String}'"
            LiteralKind.WSTRING -> "\"${value as String}\""
            LiteralKind.TIME -> "T#" + (value as String)
            else -> error("Kind of literal $this is null")
        }
    }

    fun getLoadablePresentation(): String {
        return when(kind) {
            LiteralKind.BINARY_BOOL -> if (value as Boolean) "BOOL#1" else "BOOL#0"
            LiteralKind.BINARY_INT -> "2#" + (value as Int).toString(2)
            LiteralKind.BOOL -> if (value as Boolean) "TRUE" else "FALSE"
            LiteralKind.DEC_INT -> "INT#" + (value as Int).toString()
            LiteralKind.HEX_INT -> "16#" + (value as Int).toString(16)
            LiteralKind.OCT_INT -> "8#" + (value as Int).toString(8)
            LiteralKind.STRING -> value as String
            LiteralKind.WSTRING -> value as String
            LiteralKind.TIME -> "T#" + (value as String)
            else -> error("Kind of literal $this is null")
        }
    }
}