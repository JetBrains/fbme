package org.fbme.smvDebugger.panel.condition

import java.util.Set

class ConditionParser {
    private var str: String? = null
    private var index = 0
    fun parse(str: String): Expression {
        this.str = cleanWhitespaces(str)
        index = 0
        val result = disjunction()
        if (index != this.str!!.length) {
            throw ConditionParseException(String.format("Failed to parse '%s'", str.substring(index)))
        }
        return result
    }

    private fun cleanWhitespaces(str: String): String {
        val builder = StringBuilder()
        for (element in str) {
            val ch = element
            if (!Character.isWhitespace(ch)) {
                builder.append(ch)
            }
        }
        return builder.toString()
    }

    private fun disjunction(): Expression {
        var result = conjunction()
        while (index < str!!.length) {
            result = if (compare("||")) {
                Disjunction(result, conjunction())
            } else {
                break
            }
        }
        return result
    }

    private fun conjunction(): Expression {
        var result = equalityOrInequality()
        while (index < str!!.length) {
            result = if (compare("&&")) {
                Conjunction(result, equalityOrInequality())
            } else {
                break
            }
        }
        return result
    }

    private fun equalityOrInequality(): Expression {
        var result = negation()
        while (index < str!!.length) {
            result = if (compare("==")) {
                Equality(result, negation())
            } else if (compare("!=")) {
                Inequality(result, negation())
            } else {
                break
            }
        }
        return result
    }

    private fun negation(): Expression {
        return if (compare("!")) {
            Negation(negation())
        } else brackets()
    }

    private fun brackets(): Expression {
        if (compare("(")) {
            val result = disjunction()
            if (!compare(")")) {
                throw ConditionParseException(String.format("Expected ')' at position %d", index))
            }
            return result
        }
        return argument()
    }

    private fun argument(): Expression {
        val builder = StringBuilder()
        while (index < str!!.length && (
            Character.isLetterOrDigit(str!![index]) || SPECIAL_SYMBOLS.contains(
                    str!![index]
                )
            )
        ) {
            builder.append(str!![index])
            index++
        }
        val result = builder.toString()
        if (result.isEmpty()) {
            throw ConditionParseException(String.format("Expected argument at position %d", index))
        }
        return Argument(builder.toString())
    }

    private fun compare(op: String): Boolean {
        if (op.length == 1 && index < str!!.length && str!![index] == op[0]) {
            index++
            return true
        } else if (index + 1 < str!!.length && str!![index] == op[0] && str!![index + 1] == op[1]) {
            index += 2
            return true
        }
        return false
    }

    companion object {
        private val SPECIAL_SYMBOLS = setOf('.', '_')
    }
}
