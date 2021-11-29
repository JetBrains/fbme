package org.fbme.formalfb.generation.spin

val promelaReservedWords = setOf("if", "fi", "do", "od")
object Types {
    const val INT = "int"
    const val BOOL = "bool"
    const val BYTE = "byte"
    const val SHORT = "short"
    const val BIT = "bit"
    const val PID = "pid"
    const val UNSIGNED = "unsigned"
}

object Operators {
    const val AND = "&&"
    const val OR = "||"
    const val XOR = "^"
    const val MOD = "%"
    const val NOT = "!"
    const val NEG = "-"
}