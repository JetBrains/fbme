package org.fbme.ide.platform.debugger

data class Watchable(val path: WatchablePath, val port: String) {
    fun serialize(): WatchableData {
        return WatchableData(path.serialize(), port)
    }
}
