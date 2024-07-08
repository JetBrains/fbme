package org.fbme.ide.platform.traceProvider

data class SystemStateEvent(
    val functionBlockID: List<String>,
    val eventType: SystemStateEventType,
    val trace: Array<String>){

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as SystemStateEvent

        if (functionBlockID != other.functionBlockID) return false
        if (eventType != other.eventType) return false
        if (!trace.contentEquals(other.trace)) return false

        return true
    }

    override fun hashCode(): Int {
        var result = functionBlockID.hashCode()
        result = 31 * result + eventType.hashCode()
        result = 31 * result + trace.contentHashCode()
        return result
    }
}
