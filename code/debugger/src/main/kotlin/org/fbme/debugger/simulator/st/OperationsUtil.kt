package org.fbme.debugger.simulator.st

import org.fbme.debugger.common.value.BooleanValue
import org.fbme.debugger.common.value.IntValue
import org.fbme.debugger.common.value.StringValue
import org.fbme.debugger.common.value.Value
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.expressions.UnaryOperation
import kotlin.math.pow

fun BinaryOperation.apply(leftValue: Value<*>, rightValue: Value<*>): Value<*> = when (this) {
    BinaryOperation.ADD -> leftValue + rightValue
    BinaryOperation.AMP -> leftValue amp rightValue
    BinaryOperation.AND -> leftValue and rightValue
    BinaryOperation.DIV -> leftValue / rightValue
    BinaryOperation.EQ -> BooleanValue(leftValue == rightValue)
    BinaryOperation.GT -> BooleanValue(leftValue > rightValue)
    BinaryOperation.GTE -> BooleanValue(leftValue >= rightValue)
    BinaryOperation.LT -> BooleanValue(leftValue < rightValue)
    BinaryOperation.LTE -> BooleanValue(leftValue <= rightValue)
    BinaryOperation.MOD -> leftValue % rightValue
    BinaryOperation.MUL -> leftValue * rightValue
    BinaryOperation.NEQ -> BooleanValue(leftValue != rightValue)
    BinaryOperation.OR -> leftValue or rightValue
    BinaryOperation.POW -> leftValue pow rightValue
    BinaryOperation.SUB -> leftValue - rightValue
    BinaryOperation.XOR -> leftValue xor rightValue
}

fun UnaryOperation.apply(value: Value<*>): Value<*> = when (this) {
    UnaryOperation.NOT -> !value
    UnaryOperation.NEG -> -value
}

private operator fun Value<*>.plus(other: Value<*>): Value<*> = when {
    this is IntValue && other is IntValue -> IntValue(value + other.value)
    this is StringValue && other is StringValue -> StringValue(value + other.value)
    else -> error("Undeclared operation")
}

private infix fun Value<*>.amp(other: Value<*>): Value<*> = when {
    this is BooleanValue && other is BooleanValue -> BooleanValue(value && other.value)
    this is IntValue && other is IntValue -> IntValue(value.and(other.value))
    else -> error("Undeclared operation")
}

private infix fun Value<*>.and(other: Value<*>): Value<*> = when {
    this is BooleanValue && other is BooleanValue -> BooleanValue(value && other.value)
    else -> error("Undeclared operation")
}

private operator fun Value<*>.div(other: Value<*>): Value<*> = when {
    this is IntValue && other is IntValue -> IntValue(value / other.value)
    else -> error("Undeclared operation")
}

private operator fun Value<*>.compareTo(other: Value<*>): Int = when {
    this is IntValue && other is IntValue -> value.compareTo(other.value)
    else -> error("Undeclared operation")
}

private operator fun Value<*>.rem(other: Value<*>): Value<*> = when {
    this is IntValue && other is IntValue -> IntValue(value % other.value)
    else -> error("Undeclared operation")
}

private operator fun Value<*>.times(other: Value<*>): Value<*> = when {
    this is IntValue && other is IntValue -> IntValue(value * other.value)
    else -> error("Undeclared operation")
}

private infix fun Value<*>.or(other: Value<*>): Value<*> = when {
    this is BooleanValue && other is BooleanValue -> BooleanValue(value or other.value)
    else -> error("Undeclared operation")
}

private infix fun Value<*>.pow(other: Value<*>): Value<*> = when {
    this is IntValue && other is IntValue -> IntValue(value.toDouble().pow(other.value).toInt())
    else -> error("Undeclared operation")
}

private operator fun Value<*>.minus(other: Value<*>): Value<*> = when {
    this is IntValue && other is IntValue -> IntValue(value - other.value)
    else -> error("Undeclared operation")
}

private infix fun Value<*>.xor(other: Value<*>): Value<*> = when {
    this is BooleanValue && other is BooleanValue -> BooleanValue(value xor other.value)
    else -> error("Undeclared operation")
}

private operator fun Value<*>.not(): Value<*> = when (this) {
    is BooleanValue -> BooleanValue(!value)
    else -> error("Undeclared operation")
}

private operator fun Value<*>.unaryMinus(): Value<*> = when (this) {
    is IntValue -> IntValue(-value)
    else -> error("Undeclared operation")
}