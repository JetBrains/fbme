package org.fbme.ide.platform.debugger

interface Watcher {
    fun watch(w: WatchableData)
    fun unwatch(w: WatchableData)
    fun readWatches(): Map<WatchableData, String>
}
