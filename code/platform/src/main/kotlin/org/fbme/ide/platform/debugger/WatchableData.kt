package org.fbme.ide.platform.debugger

import org.fbme.ide.iec61499.repository.PlatformRepository

data class WatchableData(val path: WatchablePathData, val port: String) {
    fun resolve(repository: PlatformRepository): Watchable {
        return Watchable(path.resolve(repository), port)
    }
}
