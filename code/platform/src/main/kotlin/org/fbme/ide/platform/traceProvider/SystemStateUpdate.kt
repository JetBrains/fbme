package org.fbme.ide.platform.traceProvider

import java.util.*

data class SystemStateUpdate(
    val date: Date?,
    val info: Array<SystemStateEvent>) {

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as SystemStateUpdate

        if (date != other.date) return false
        if (!info.contentEquals(other.info)) return false

        return true
    }

    override fun hashCode(): Int {
        var result = date?.hashCode() ?: 0
        result = 31 * result + info.contentHashCode()
        return result
    }


}
