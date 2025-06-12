package org.fbme.debugger

import com.intellij.openapi.components.service
import com.intellij.openapi.project.Project
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.common.change.ComplexChange
import org.fbme.debugger.common.resolveFB
import org.fbme.debugger.common.resolvePath
import org.fbme.debugger.common.state.*
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.debugger.common.typeOfParameter
import org.fbme.debugger.common.value.*
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
    project: Project,
    private val resourceDeclaration: ResourceDeclaration,
    private val trace: ExecutionTrace,
) {
    inner class TraceNode(
        val traceSegment: List<TraceItem>,
        val simulator: ResourceSimulator,
        val parent: TraceNode? = null
    )

    private val watcherFacade = project.service<WatcherFacade>()
    private val readWatchesRequests = mutableListOf<Map<WatchableData, String>>()

    private val repository = PlatformRepositoryProvider.getInstance(project.getComponent(MPSProject::class.java))

    private val readWatchesListener = ReadWatchesListener { watches ->
        if (watches.isEmpty()) {
            return@ReadWatchesListener
        }
        readWatchesRequests.add(watches)
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
        initPorts()

        val initialState = trace.items.last().state as ResourceState

        val uniqueResolvedWatches = readWatchesRequests.toSet().map { watches ->
            watches.mapKeys { it.key.resolve(repository) }
        }

        val traceItems = try {
            fullTrace(initialState, uniqueResolvedWatches)
        } catch (e: Throwable) {
            partialTrace(initialState, uniqueResolvedWatches)
        }

        trace.addAll(traceItems)
    }

    @OptIn(ExperimentalStdlibApi::class)
    private fun partialTrace(
        initialState: ResourceState,
        uniqueResolvedWatches: List<Map<Watchable, String>>
    ): List<TraceItem> {
        return buildList {
            var currentState = initialState

            for (watches in uniqueResolvedWatches) {
                val changes = getChanges(currentState, watches)

                if (changes.isEmpty()) continue

                val nextState = ResourceState(currentState) {
                    for ((path, newValue) in changes) {
                        val fbState = resolveFB(path.dropLast(1))
                        val name = path.last()

                        fbState.apply {
                            when (name) {
                                in inputEvents -> inputEvents[name] = newValue.toInt()
                                in outputEvents -> outputEvents[name] = newValue.toInt()
                                in inputVariables -> inputVariables[name] = inputVariables[name]!!.copyWith(newValue)
                                in outputVariables -> outputVariables[name] = outputVariables[name]!!.copyWith(newValue)
                            }
                            if (this is BasicFBState) {
                                if (name in internalVariables) {
                                    internalVariables[name] = internalVariables[name]!!.copyWith(newValue)
                                } else if (name == "\$ECC") {
                                    activeState = newValue
                                }
                            }
                        }
                    }
                }

                val traceItem = TraceItem(nextState, emptyList(), ComplexChange(emptyList()), true)

                add(traceItem)

                currentState = nextState
            }
        }
    }

    @OptIn(ExperimentalStdlibApi::class)
    private fun fullTrace(
        initialState: ResourceState,
        uniqueResolvedWatches: List<Map<Watchable, String>>
    ): List<TraceItem> {
        val startNode = TraceNode(
            traceSegment = listOf(trace.items.last()),
            simulator = ResourceSimulator(resourceDeclaration, initialState)
        )

        var prevState = initialState

        var candidates = listOf(startNode)

        requestsLoop@ for (watches in uniqueResolvedWatches) {

            val changes = getChanges(prevState, watches)
            if (changes.isEmpty()) {
                continue@requestsLoop
            }

            val serviceOutputEventChanges = changes.filter { (path, _) ->
                val fbType = resourceDeclaration.resolvePath(path.dropLast(1))
                val portName = path.last()
                fbType is ServiceInterfaceFBTypeDeclaration && portName in fbType.outputEvents.map { it.name }
                        || fbType.name == "E_CYCLE" && portName == "EO" // TODO: handle these cases more generic way
            }

            if (serviceOutputEventChanges.isNotEmpty()) {
                val serviceEventPermutations = serviceOutputEventChanges.toList().permutations()
                val newCandidates = mutableListOf<TraceNode>()
                candidatesLoop@ for (candidate in candidates) {
                    val traceSegment = candidate.traceSegment
                    for (permutation in serviceEventPermutations) {
                        val simulator = ResourceSimulator(resourceDeclaration, candidate.simulator.state.copy()).also {
                            it.applyContext(candidate.simulator)
                        }
                        for ((serviceEventPath, _) in permutation) {
                            val fbSimulator = simulator.resolveSimulator(serviceEventPath.dropLast(1)) as FBSimulator
                            fbSimulator.triggerEvent(serviceEventPath.last())
                        }
                        newCandidates += TraceNode(
                            traceSegment = traceSegment + simulator.trace.items.drop(1),
                            simulator = simulator,
                            parent = candidate.parent
                        )
                    }
                }
                candidates = newCandidates
            }

            val newCandidates = mutableListOf<TraceNode>()
            candidatesLoop@ for (candidate in candidates) {
                val traceSegment = candidate.traceSegment
                tailSearchLoop@ for ((itemIndex, traceItem) in traceSegment.withIndex()) {
                    val itemChanges = getChanges(traceItem.state as ResourceState, watches)
                    if (itemChanges.isEmpty()) {
                        prevState = traceItem.state
                        newCandidates += TraceNode(
                            traceSegment = traceSegment.takeLast(traceSegment.size - itemIndex),
                            simulator = candidate.simulator,
                            parent = TraceNode(
                                traceSegment = traceSegment.take(itemIndex),
                                simulator = candidate.simulator,
                                parent = candidate.parent
                            )
                        )
                        break@tailSearchLoop
                    }
                }
            }
            candidates = newCandidates
        }

        return buildList {
            var cur: TraceNode? = candidates.first()
            while (cur != null) {
                addAll(cur.traceSegment.reversed())
                cur = cur.parent
            }
        }.reversed().drop(1)
    }

    private fun initPorts() {
        for (functionBlock in resourceDeclaration.allFunctionBlocks()) {
            for (parameter in functionBlock.parameters) {
                val portName = parameter.parameterReference.getTarget()!!.name
                val valueAsLiteral = parameter.value ?: continue
                val value = Value.fromSTLiteral(valueAsLiteral)
                val fbState = (trace.first().state as ResourceState).children[functionBlock.name]!!
                fbState.inputVariables[portName] = value
            }
        }
    }

    private fun <T> Value<T>.copyWith(newValue: String): Value<T> {
        @Suppress("UNCHECKED_CAST")
        return when (this) {
            is BooleanValue -> BooleanValue(newValue.toBoolean())
            is IntValue -> IntValue(newValue.toInt())
            is StringValue -> StringValue(newValue)
            is TimeValue -> TimeValue(newValue)
        } as Value<T>
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