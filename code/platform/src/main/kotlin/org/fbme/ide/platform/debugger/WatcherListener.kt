package org.fbme.ide.platform.debugger

interface WatcherListener {
    fun onWatchAdded(watchable: WatchableData)
    fun onWatchRemoved(watchable: WatchableData)
}
