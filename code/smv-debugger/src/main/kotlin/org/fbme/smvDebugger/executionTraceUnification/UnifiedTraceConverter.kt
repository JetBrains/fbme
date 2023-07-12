package org.fbme.smvDebugger.executionTraceUnification

import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.FBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.ide.platform.traceProvider.SystemStateEvent
import org.fbme.ide.platform.traceProvider.SystemStateEventType
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

object UnifiedTraceConverter {


    private val unifiedStateEvents2SystemChange = mapOf<SystemStateEventType, (SystemStateEvent, CompositeFBState) -> TraceItem?>(
        SystemStateEventType.EMMITS_EVENT to { e: SystemStateEvent, state: CompositeFBState ->
            if( e.trace[1] == "TRUE"  ){
                val newState = state.copy()
                val tc = OutputEventChange(e.trace[0])
                var initState: FBState? = newState
                var tmpState: FBState?

                for (step in e.functionBlockID){
                    tmpState = (initState as? CompositeFBState)?.children?.get(step) //
                    if( null == tmpState && initState?.outputEvents?.get(e.trace[0]) != null){ // event found - we dont have children and event in outputEvents
                        val curr = initState.outputEvents[e.trace[0]]
                        if (curr != null) {
                            initState.outputEvents[e.trace[0]] = curr + 1
                        }
                        break
                    }
                    initState = tmpState
                }

                TraceItem(newState, e.functionBlockID, tc)
            } else{
                null
            }
        },

        SystemStateEventType.Q_UPDATE to { e: SystemStateEvent, state: CompositeFBState ->
           // StateChange(e.trace[0])
            null
        },
    )
    fun convertTrace(unifiedTrace: ArrayList<SystemStateUpdate>, cfb: CompositeFBTypeDeclaration): ExecutionTrace {
        var stateInit = CompositeFBState(cfb)
        val newTrace = ExecutionTrace(stateInit)

        for (st in unifiedTrace){
            for (systemStateEvent in st.info){
                val tc = unifiedStateEvents2SystemChange[systemStateEvent.eventType]?.invoke(systemStateEvent,stateInit)
                if(tc != null){
                    newTrace.add(tc)
                }
            }
        }
        return newTrace
    }
}