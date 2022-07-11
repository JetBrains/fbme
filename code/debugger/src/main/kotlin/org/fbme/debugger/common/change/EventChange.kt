package org.fbme.debugger.common.change

interface EventChange : TraceChange {
    val eventName: String
}