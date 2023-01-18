package org.fbme.ide.platform.debugger

interface ReadWatchesListener {
    fun onReadWatches(watches: Map<WatchableData, String>)
}