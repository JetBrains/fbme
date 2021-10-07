package org.fbme.ide.platform.debugger

import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Identifier

class WatchablePathData(private val root: Identifier, vararg path: Identifier) {
    private val path: Array<out Identifier>

    init {
        this.path = path
    }

    fun resolve(repository: PlatformRepository): WatchablePath {
        val declarations = repository.declarationsScope
        return WatchablePath(
            declarations.findResourceDeclaration(root) ?: error("Resource declaration not found"),
            *path.map { declarations.findFunctionBlockDeclaration(it) ?: error("FB declaration not found") }
                .toTypedArray()
        )
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is WatchablePathData) {
            return false
        }
        return root == other.root && path.contentEquals(other.path)
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + root.hashCode()
        result = 31 * result + path.contentHashCode()
        return result
    }
}