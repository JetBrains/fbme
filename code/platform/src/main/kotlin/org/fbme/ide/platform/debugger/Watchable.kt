package org.fbme.ide.platform.debugger

import org.fbme.lib.iec61499.descriptors.FBPortDescriptor

class Watchable(val path: WatchablePath, val port: String) {
    val fqName = toString()
    var portDescriptor: FBPortDescriptor? = null

    fun serialize(): WatchableData {
        return WatchableData(path.serialize(), port)
    }

    override fun toString(): String {
        return "$path.$port"
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