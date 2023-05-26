package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind

data class FunctionBlockPortView(
    override val component: FunctionBlockView,
    val position: Int,
    override val kind: EntryKind,
    override val isSource: Boolean,
    override val target: Declaration
) : NetworkPortViewAdd
