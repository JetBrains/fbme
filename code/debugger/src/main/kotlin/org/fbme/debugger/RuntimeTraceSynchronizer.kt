package org.fbme.debugger

import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.ResourceState
import org.fbme.debugger.common.state.typeOfParameter
import org.fbme.debugger.common.state.valueOfParameter
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.debugger.common.ui.resolveFB
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.debugger.ReadWatchesListener
import org.fbme.ide.platform.debugger.WatchableData
import org.fbme.ide.platform.debugger.WatcherFacade
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class RuntimeTraceSynchronizer(
    private val mpsProject: jetbrains.mps.project.Project,
    private val resourceDeclaration: ResourceDeclaration,
    private val trace: ExecutionTrace
) {
    // save trace
    // after stopping execution
    // by invoking associated method
    // sort the sequence of states
    // and display it

    private val readWatchesRequests by lazy { mutableListOf<Map<WatchableData, String>>() }

    private val watcherFacade by lazy { WatcherFacade.getInstance(mpsProject)!! }

    private val readWatchesListener by lazy {
        object : ReadWatchesListener {
            override fun onReadWatches(watches: Map<WatchableData, String>) {
                if (watches.isEmpty()) {
                    return
                }
                readWatchesRequests.add(watches)
            }
        }
    }

    fun startMonitoring() {
        watcherFacade.addReadWatchesListener(readWatchesListener)
    }

    fun endMonitoring() {
        processReadWatchesRequests()
        watcherFacade.removeReadWatchesListener(readWatchesListener)
    }

    private fun processReadWatchesRequests() {
        for (watches in readWatchesRequests) {
            val repository = PlatformRepositoryProvider.getInstance(mpsProject)
            val newWatches = watches.mapKeys { it.key.resolve(repository) }

            for (watch in newWatches) {
                val state = trace[trace.size - 1].state

                when (state) {
                    is ResourceState -> {
                        val path = watch.key.path.path.map { it.name }.plus(watch.key.port)
                        val portName = watch.key.port
                        val fbPath = path.dropLast(1)
                        val fbState = state.resolveFB(fbPath)
                        val prevValue = fbState.valueOfParameter(portName) ?: error("value unresolved")
                        val newValue = watch.value

                        if (prevValue != newValue) {
                            val typeOfParameter = fbState.typeOfParameter(portName)

                            val newState = state.copy()
                            val newFBState = newState.resolveFB(fbPath)
                            when (typeOfParameter) {
                                "Input Event" -> {
                                    newFBState.inputEvents[portName] = newFBState.inputEvents[portName]!! + 1
                                    val change = InputEventChange(portName)
                                    trace.add(TraceItem(newState, fbPath, change))
                                }

                                "Output Event" -> {
                                    newFBState.outputEvents[portName] = newFBState.outputEvents[portName]!! + 1
                                    val change = OutputEventChange(portName)
                                    trace.add(TraceItem(newState, fbPath, change))
                                }

                                "Input Variable",
                                "Output Variable",
                                "Internal Variable" -> {
                                }

                                "ECC State" -> {
                                    (newFBState as BasicFBState).activeState = newValue
                                    val change = StateChange(newValue)
                                    trace.add(TraceItem(newState, fbPath, change))
                                }

                                else -> error("unknown type")
                            }
                        }
                    }
                    else -> error("expected execution of resource")
                }
            }
        }
    }

    companion object {
        private val instances = mutableMapOf<ResourceDeclaration, RuntimeTraceSynchronizer>()

        fun getInstance(resourceDeclaration: ResourceDeclaration): RuntimeTraceSynchronizer? {
            return instances[resourceDeclaration]
        }

        fun addTraceSynchronizer(resourceDeclaration: ResourceDeclaration, traceSynchronizer: RuntimeTraceSynchronizer) {
            instances[resourceDeclaration] = traceSynchronizer
        }

        fun removeTraceSynchronizer(resourceDeclaration: ResourceDeclaration) {
            instances.remove(resourceDeclaration)
        }
    }
}