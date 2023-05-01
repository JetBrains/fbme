package org.fbme.ide.platform.debugger

fun interface ReadWatchesListener {
    fun onReadWatches(watches: Map<WatchableData, String>)
}