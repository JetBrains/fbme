package org.fbme.debugger.common.value

class UIntValue (override val value: UInt) : Value<UInt> {
    override fun copy() = UIntValue(value)
    override fun toString() = value.toString()
}