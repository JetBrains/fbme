package org.fbme.ide.platform.debugger

import jetbrains.mps.internal.collections.runtime.ISelector
import jetbrains.mps.internal.collections.runtime.IterableUtils
import jetbrains.mps.internal.collections.runtime.ListSequence
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

class Watchable(val path: WatchablePath, val port: String) {
    val fqName = toString()
    var portDescriptor: FBPortDescriptor? = null

    fun serialize(): WatchableData {
        return WatchableData(path.serialize(), port)
    }

    fun serializeSource(): String {
        val path: List<FunctionBlockDeclarationBase> = path.path
        return IterableUtils.join(
            ListSequence.fromList(path).select(object : ISelector<FunctionBlockDeclarationBase, String>() {
                override fun select(it: FunctionBlockDeclarationBase): String {
                    return it.name
                }
            }), "."
        ) + "." + port
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