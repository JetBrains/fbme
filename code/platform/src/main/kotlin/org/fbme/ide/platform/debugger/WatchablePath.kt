package org.fbme.ide.platform.debugger

import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

data class WatchablePath(val root: ResourceDeclaration, val path: List<FunctionBlockDeclarationBase>) {

    fun serialize(): WatchablePathData {
        return WatchablePathData(root.identifier, path.map { it.identifier })
    }
}
