package org.fbme.ide.platform.debugger

class Watchable(val path: WatchablePath, val port: String) {
    fun serialize(): WatchableData {
        return WatchableData(path.serialize(), port)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is Watchable) {
            return false
        }
        return path == other.path && port == other.port
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + path.hashCode()
        result = 31 * result + port.hashCode()
        return result
    }
}