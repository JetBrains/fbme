package org.fbme.debugger.executionTraceFactory

import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import java.util.concurrent.Future

interface TraceFactory {
    fun generateTrace(agr: ArrayList<String>): Future<ArrayList<SystemStateUpdate>>
}