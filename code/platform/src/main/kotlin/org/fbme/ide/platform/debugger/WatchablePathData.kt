package org.fbme.ide.platform.debugger

import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Identifier

data class WatchablePathData(private val root: Identifier, val path: List<Identifier>) {

    fun resolve(repository: PlatformRepository): WatchablePath {
        val declarations = repository.declarationsScope
        return WatchablePath(
            declarations.findResourceDeclaration(root) ?: error("Resource declaration not found"),
            path.map { declarations.findFunctionBlockDeclaration(it) ?: error("FB declaration not found") }
        )
    }
}
