package org.fbme.debugger.common.value

@JvmInline
value class TimeValue(override val value: String) : Value<String> {
    override fun copy() = TimeValue(value)
    override fun toString() = value
}