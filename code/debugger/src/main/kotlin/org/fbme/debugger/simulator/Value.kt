package org.fbme.debugger.simulator

import org.fbme.lib.st.expressions.Literal
import kotlin.math.pow

class Value<V>(
    var value: V
) {
    constructor(literal: Literal<V>) : this(literal.value)

    override fun equals(other: Any?): Boolean {
        if (other !is Value<*>) {
            return false
        }
        val left = this.value!!
        val right = other.value ?: return false

        if (left::class.qualifiedName != right::class.qualifiedName) {
            return false
        }

        return when (left::class.qualifiedName) {
            Int::class.qualifiedName -> left as Int == right as Int
            Boolean::class.qualifiedName -> left as Boolean == right as Boolean
            String::class.qualifiedName -> left as String == right as String
            else -> error("unexpected type")
        }
    }

    override fun hashCode(): Int {
        val left = this.value!!

        return when (left::class.qualifiedName) {
            Int::class.qualifiedName -> (left as Int).hashCode()
            Boolean::class.qualifiedName -> (left as Boolean).hashCode()
            String::class.qualifiedName -> (left as String).hashCode()
            else -> error("unexpected type")
        }
    }
}

operator fun Value<*>.plus(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value(left as Int + right as Int)
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> Value(left as String + right as String)
        else -> error("unexpected type")
    }
}

operator fun Value<*>.minus(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value(left as Int - right as Int)
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

operator fun Value<*>.times(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value(left as Int * right as Int)
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

operator fun Value<*>.div(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value(left as Int / right as Int)
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

operator fun Value<*>.rem(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value(left as Int % right as Int)
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

operator fun Value<*>.compareTo(other: Value<*>): Int {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> (left as Int).compareTo(right as Int)
        Boolean::class.qualifiedName -> (left as Boolean).compareTo(right as Boolean)
        String::class.qualifiedName -> (left as String).compareTo(right as String)
        else -> error("unexpected type")
    }
}

infix fun Value<*>.pow(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value((left as Int).toDouble().pow(right as Int).toInt())
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

infix fun Value<*>.amp(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> error("operator not defined")
        Boolean::class.qualifiedName -> Value(left as Boolean && right as Boolean)
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

infix fun Value<*>.and(other: Value<*>) = this amp other

infix fun Value<*>.or(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> error("operator not defined")
        Boolean::class.qualifiedName -> Value(left as Boolean || right as Boolean)
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

infix fun Value<*>.xor(other: Value<*>): Value<*> {
    val left = checkNotNull(this.value)
    val right = checkNotNull(other.value)
    check(left::class.qualifiedName == right::class.qualifiedName)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> error("operator not defined")
        Boolean::class.qualifiedName -> Value(left as Boolean xor right as Boolean)
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

operator fun Value<*>.unaryMinus(): Value<*> {
    val left = checkNotNull(this.value)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> Value(-(left as Int))
        Boolean::class.qualifiedName -> error("operator not defined")
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}

operator fun Value<*>.not(): Value<*> {
    val left = checkNotNull(this.value)
    return when (left::class.qualifiedName) {
        Int::class.qualifiedName -> error("operator not defined")
        Boolean::class.qualifiedName -> Value(!(left as Boolean))
        String::class.qualifiedName -> error("operator not defined")
        else -> error("unexpected type")
    }
}