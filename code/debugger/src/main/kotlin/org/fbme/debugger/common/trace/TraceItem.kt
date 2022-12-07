package org.fbme.debugger.common.trace

import org.fbme.debugger.common.change.TraceChange
import org.fbme.debugger.common.state.State

data class TraceItem(
    val state: State,
    val path: List<String>,
    val change: TraceChange,
    var synced: Boolean = false,
)
