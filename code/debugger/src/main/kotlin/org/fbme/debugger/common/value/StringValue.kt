package org.fbme.debugger.common.value

@JvmInline
value class StringValue(override val value: String) : Value<String> {
    override fun copy() = StringValue(value)
    override fun toString() = value
}