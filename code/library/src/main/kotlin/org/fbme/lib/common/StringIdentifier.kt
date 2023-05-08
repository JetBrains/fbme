package org.fbme.lib.common

class StringIdentifier(val value: String) : Identifier {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as StringIdentifier
        return value == that.value
    }

    override fun hashCode(): Int {
        return value.hashCode()
    }
}
