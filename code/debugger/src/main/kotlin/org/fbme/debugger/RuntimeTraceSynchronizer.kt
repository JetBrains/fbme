package org.fbme.debugger

import org.fbme.debugger.common.resolveFB
import org.fbme.debugger.common.resolvePath
import org.fbme.debugger.common.state.ResourceState
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.typeOfParameter
import org.fbme.debugger.common.value.Value
import org.fbme.debugger.common.valueOfParameter
import org.fbme.debugger.simulator.FBSimulator
import org.fbme.debugger.simulator.ResourceSimulator
import org.fbme.debugger.simulator.applyContext
import org.fbme.debugger.simulator.resolveSimulator
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.debugger.ReadWatchesListener
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.ide.platform.debugger.WatchableData
import org.fbme.ide.platform.debugger.WatcherFacade
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class RuntimeTraceSynchronizer(
    private val mpsProject: jetbrains.mps.project.Project,
    private val resourceDeclaration: ResourceDeclaration,
    private val trace: ExecutionTrace,
) {
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

    private fun getChanges(currentState: ResourceState, newWatches: Map<Watchable, String>): Map<List<String>, String> {
        val changes = mutableMapOf<List<String>, String>()
        for (watch in newWatches) {
            val path = watch.key.path.path.map { it.name }.plus(watch.key.port)
            val portName = watch.key.port
            val fbPath = path.dropLast(1)
            val fbState = currentState.resolveFB(fbPath)
            val typeOfParameter = fbState.typeOfParameter(portName) ?: error("parameter not found")
            val prevValue = fbState.valueOfParameter(portName) ?: error("value unresolved")
            val typeDeclaration = resourceDeclaration.resolvePath(fbPath)
            val newValue = if (typeOfParameter == "ECC State")
                (typeDeclaration as BasicFBTypeDeclaration).ecc.states[watch.value.toInt()].name
            else watch.value
            val validNewValue = if (newValue.startsWith("T#")) newValue.drop(2) else newValue

            if (prevValue != validNewValue) {
                changes[path] = validNewValue
            }
        }
        return changes
    }

    private fun processReadWatchesRequests() {
        var currentStateIndex = 0
        var curSimulator: ResourceSimulator? = null

        for (functionBlock in resourceDeclaration.allFunctionBlocks()) {
            for (parameter in functionBlock.parameters) {
                val portName = parameter.parameterReference.getTarget()!!.name
                val value = Value.fromSTLiteral(parameter.value!!)
                val fbState = (trace[currentStateIndex].state as ResourceState).children[functionBlock.name]!!
                fbState.inputVariables[portName] = value
            }
        }

        requestsLoop@ for (watches in readWatchesRequests) {
            val repository = PlatformRepositoryProvider.getInstance(mpsProject)
            val newWatches = watches.mapKeys { it.key.resolve(repository) }

            for (i in currentStateIndex + 1 until trace.size) {
                if (getChanges(trace[i].state as ResourceState, newWatches).isEmpty()) {
                    currentStateIndex = i
                    continue@requestsLoop
                }
            }
            currentStateIndex = trace.size - 1

            val changes = getChanges(trace[currentStateIndex].state as ResourceState, newWatches)
            if (changes.isEmpty()) {
                continue@requestsLoop
            }

            val currentState = trace[currentStateIndex].state as ResourceState

            for ((path, _) in changes) {
                val portName = path.last()
                val fbPath = path.dropLast(1)
                val fbState = currentState.resolveFB(fbPath)
                val typeOfParameter = fbState.typeOfParameter(portName) ?: error("parameter not found")

                val newState = currentState.copy()

                val resourceSimulator = ResourceSimulator(
                    resourceDeclaration,
                    newState,
                )
                val traceSegment = resourceSimulator.trace
                if (curSimulator != null) {
                    resourceSimulator.applyContext(curSimulator)
                }
                val fbSimulator = resourceSimulator.resolveSimulator(fbPath) as FBSimulator

                when (typeOfParameter) {
                    "Input Event",
                    "Output Event" -> {
                        fbSimulator.triggerEvent(portName)
                        for ((index, traceItem) in traceSegment.drop(1).withIndex()) {
                            val changesOnSegment = getChanges(traceItem.state as ResourceState, newWatches)
                            if (changesOnSegment.isEmpty()) {
                                traceItem.synced = true
                                currentStateIndex += index + 1
                                trace.addAll(traceSegment.drop(1))
                                curSimulator = resourceSimulator
                                continue@requestsLoop
                            }
                        }
                    }

                    // Skip everything except event triggers
                    "Input Variable",
                    "Output Variable",
                    "Internal Variable",
                    "ECC State" -> {
                        // skip
                    }

                    else -> error("unknown type")
                }
            }
        }
    }

    companion object {
        private val instances = mutableMapOf<ResourceDeclaration, RuntimeTraceSynchronizer>()

        fun getInstance(resourceDeclaration: ResourceDeclaration): RuntimeTraceSynchronizer? {
            return instances[resourceDeclaration]
        }

        fun addTraceSynchronizer(
            resourceDeclaration: ResourceDeclaration,
            traceSynchronizer: RuntimeTraceSynchronizer,
        ) {
            instances[resourceDeclaration] = traceSynchronizer
        }

        fun removeTraceSynchronizer(resourceDeclaration: ResourceDeclaration) {
            instances.remove(resourceDeclaration)
        }

        @JvmSynthetic
        internal fun hasTrace(trace: ExecutionTrace): Boolean {
            return instances.values.firstOrNull { it.trace === trace } != null
        }
    }
}