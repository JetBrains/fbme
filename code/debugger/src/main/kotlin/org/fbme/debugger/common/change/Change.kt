package org.fbme.debugger.common.change

sealed interface TraceChange

sealed interface EventChange : TraceChange {
    val eventName: String
}

object InitialChange : TraceChange

@JvmInline
value class InputEventChange(override val eventName: String) : EventChange

@JvmInline
value class OutputEventChange(override val eventName: String) : EventChange

@JvmInline
value class StateChange(val state: String) : TraceChange