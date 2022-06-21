package org.fbme.smvDebugger.executionTraceGeneration

import org.fbme.debugger.executionTraceFactory.TraceFactory
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import java.util.concurrent.Future

class SMVTraceFactory: TraceFactory {
    override fun generateTrace(agr: ArrayList<String>): Future<ArrayList<SystemStateUpdate>> {
        TODO("Not yet implemented")
    }
}