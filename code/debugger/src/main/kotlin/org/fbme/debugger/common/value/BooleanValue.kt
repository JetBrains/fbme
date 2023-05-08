package org.fbme.debugger.common.value

@JvmInline
value class BooleanValue(override val value: Boolean) : Value<Boolean> {
    override fun copy() = BooleanValue(value)
    override fun toString() = value.toString().uppercase()
}