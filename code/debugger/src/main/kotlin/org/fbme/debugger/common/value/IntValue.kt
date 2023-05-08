package org.fbme.debugger.common.value

@JvmInline
value class IntValue(override val value: Int) : Value<Int> {
    override fun copy() = IntValue(value)
    override fun toString() = value.toString()
}