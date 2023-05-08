package org.fbme.debugger.common.trace

import org.fbme.debugger.common.change.InitialChange
import org.fbme.debugger.common.state.State

class ExecutionTrace(initialState: State) : Iterable<TraceItem> {
    private val _items = mutableListOf(TraceItem(initialState.copy(), listOf(), InitialChange))

    private val listenersOnAdding = mutableListOf<(TraceItem) -> Unit>()

    val items: List<TraceItem>
        get() {
            return _items
        }

    val size: Int
        get() {
            return items.size
        }

    operator fun get(index: Int): TraceItem {
        return _items[index]
    }

    fun add(traceItem: TraceItem) {
        _items.add(traceItem)

        for (callback in listenersOnAdding) {
            callback(traceItem)
        }
    }

    fun addListenerOnAdding(callback: (TraceItem) -> Unit) {
        listenersOnAdding.add(callback)
    }

    override fun iterator(): Iterator<TraceItem> {
        return items.iterator()
    }

    fun addAll(traceItems: List<TraceItem>) {
        for (traceItem in traceItems) {
            add(traceItem)
        }
    }
}