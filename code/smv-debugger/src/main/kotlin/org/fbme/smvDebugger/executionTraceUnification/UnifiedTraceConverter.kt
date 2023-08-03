package org.fbme.smvDebugger.executionTraceUnification

import com.sun.jdi.IntegerValue
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.change.TraceChange
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.FBState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.debugger.common.value.BooleanValue
import org.fbme.debugger.common.value.IntValue
import org.fbme.ide.platform.traceProvider.SystemStateEvent
import org.fbme.ide.platform.traceProvider.SystemStateEventType
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.debugger.common.value.Value
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.CFBInfoService

object UnifiedTraceConverter {
    /*
add to trace:
IF event
IF new ECC STATE - add to trace
IF trace ends
 */

    private val traceChangeFactory = mapOf<SystemStateEventType, (SystemStateEvent) -> TraceChange>(
        SystemStateEventType.EI_UPDATE to {e: SystemStateEvent ->
            InputEventChange(e.trace[0])
        },
        SystemStateEventType.EO_UPDATE to {e: SystemStateEvent ->
            OutputEventChange(e.trace[0])
        },
        SystemStateEventType.Q_UPDATE to {e: SystemStateEvent ->
            StateChange(e.trace[0])
        }
    )

    private val unifiedStateEvents2SystemChange =
        mapOf<SystemStateEventType, (SystemStateEvent, CompositeFBState, CompositeFBTypeDeclaration, MPSProject) -> Unit >(
            SystemStateEventType.EI_UPDATE to { e: SystemStateEvent, state: CompositeFBState, cfb: CompositeFBTypeDeclaration, project: MPSProject ->

                var initState: FBState = state
                var tmpState: FBState?
                for (step in e.functionBlockID) {
                    tmpState = (initState as? CompositeFBState)?.children?.get(step) //
                    if (null != tmpState){
                        if (tmpState.inputEvents[e.trace[0]] != null && (e.functionBlockID.last() == step)) { // event found - we dont have children and event in outputEvents
                            val curr = tmpState.inputEvents[e.trace[0]]
                            if (curr != null) {
                                tmpState.inputEvents[e.trace[0]] = curr + 1
                                break
                            }
                        } else if (tmpState.inputEvents[e.trace[0]] != null && (e.functionBlockID.last() != step)){
                            initState= tmpState
                        }
                    }
                }
            },



            SystemStateEventType.VI_UPDATE to { e: SystemStateEvent, state: CompositeFBState,cfb: CompositeFBTypeDeclaration, project: MPSProject ->

                var initState: FBState = state
                var tmpState: FBState?

                for (step in e.functionBlockID) {
                    tmpState = (initState as? CompositeFBState)?.children?.get(step) //

                    if (null != tmpState){
                        if (tmpState!!.inputVariables[e.trace[0]] != null && (e.functionBlockID.last() == step)){
                            val type = CFBInfoService.getInputVariableTypeByName(e.functionBlockID, e.trace[0],cfb, project) as? ElementaryType

                            if (type == ElementaryType.BOOL){
                                tmpState!!.inputVariables[e.trace[0]] = BooleanValue(e.trace.last().toBoolean())
                            }else if(type == ElementaryType.INT){
                                tmpState!!.inputVariables[e.trace[0]] = IntValue(e.trace.last().toInt())
                            }

                            break
                        } else if (tmpState!!.inputVariables[e.trace[0]] != null && (e.functionBlockID.last() != step)){
                            initState= tmpState as FBState
                        }
                    }
                }
            },


            SystemStateEventType.VO_UPDATE to { e: SystemStateEvent, state: CompositeFBState,cfb: CompositeFBTypeDeclaration, project: MPSProject ->

                var initState: FBState = state
                var tmpState: FBState?

                for (step in e.functionBlockID) {
                    tmpState = (initState as? CompositeFBState)?.children?.get(step) //

                    if (null != tmpState){

                        if (null != tmpState){
                            if (tmpState!!.outputVariables[e.trace[0]] != null && (e.functionBlockID.last() == step)){
                                val type = CFBInfoService.getOutputVariableTypeByName(e.functionBlockID, e.trace[0],cfb, project) as? ElementaryType

                                if (type == ElementaryType.BOOL){
                                    tmpState!!.outputVariables[e.trace[0]] = BooleanValue(e.trace.last().toBoolean())
                                }else if(type == ElementaryType.INT){
                                    tmpState!!.outputVariables[e.trace[0]] = IntValue(e.trace.last().toInt())
                                }
                                break
                            } else if (tmpState!!.outputVariables[e.trace[0]] != null && (e.functionBlockID.last() != step)){
                                initState= tmpState as FBState
                            }
                        }
                    }
                }
            },


            SystemStateEventType.Q_UPDATE to { e: SystemStateEvent, state: CompositeFBState, cfb: CompositeFBTypeDeclaration, project: MPSProject ->
                StateChange(e.trace[0])
            },



            SystemStateEventType.EO_UPDATE to { e: SystemStateEvent, state: CompositeFBState,cfb: CompositeFBTypeDeclaration, project: MPSProject ->

                var initState: FBState = state
                var tmpState1: FBState?
                for (step in e.functionBlockID) {
                    tmpState1 = (initState as? CompositeFBState)?.children?.get(step) //
                    if (null != tmpState1){
                        if (tmpState1.outputEvents[e.trace[0]] != null && (e.functionBlockID.last() == step)) { // event found - we dont have children and event in outputEvents
                            val curr = tmpState1.outputEvents[e.trace[0]]
                            if (curr != null) {
                                tmpState1.outputEvents[e.trace[0]] = curr + 1
                                break
                            }
                        } else if (tmpState1.outputEvents[e.trace[0]] != null && (e.functionBlockID.last() != step)){
                            initState= tmpState1
                        }
                    }

                }
            },
        )

    fun convertTrace(unifiedTrace: ArrayList<SystemStateUpdate>, cfb: CompositeFBTypeDeclaration, project: MPSProject): ExecutionTrace {
        var currState = CompositeFBState(cfb)
        val newTrace = ExecutionTrace(currState)

        for (st in unifiedTrace) {
            for (systemStateEvent in st.info) {
                val eventType = systemStateEvent.eventType
                val getTraceChange = traceChangeFactory[eventType]

                unifiedStateEvents2SystemChange[eventType]?.invoke(systemStateEvent, currState, cfb, project)
                // if we have smth important to store
                if (null != getTraceChange) {
                    newTrace.add(TraceItem(currState, systemStateEvent.functionBlockID, getTraceChange.invoke(systemStateEvent)))
                    currState = currState.copy()
                }
            }
        }
        return newTrace
    }
}