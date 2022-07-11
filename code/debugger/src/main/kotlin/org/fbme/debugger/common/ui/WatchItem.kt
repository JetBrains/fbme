package org.fbme.debugger.common.ui

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

data class WatchItem(
    val path: List<String>
)