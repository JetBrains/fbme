package org.fbme.debugger.common.change

sealed interface EventChange : TraceChange {
    val eventName: String
}