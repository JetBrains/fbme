package org.fbme.smvDebugger.panel.condition

abstract class AbstractEquality(first: Expression, second: Expression) : BinaryExpression(first, second) {
    init {
        if (first is Argument && second !is Argument) {
            throw ImpossibleComparsionException(first.toString(), second.toString())
        }
        if (first !is Argument && second is Argument) {
            throw ImpossibleComparsionException(second.toString(), first.toString())
        }
    }
}
