package org.fbme.ide.platform.debugger

import org.fbme.ide.iec61499.repository.PlatformRepository

class WatchableData(val path: WatchablePathData, val port: String) {
    fun resolve(repository: PlatformRepository): Watchable {
        return Watchable(path.resolve(repository), port)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is WatchableData) {
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