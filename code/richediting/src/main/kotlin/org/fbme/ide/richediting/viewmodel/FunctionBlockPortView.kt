package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind

class FunctionBlockPortView(
    override val component: FunctionBlockView,
    val position: Int,
    override val kind: EntryKind,
    val isSource: Boolean,
    val target: Declaration
) : NetworkPortView {
    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is FunctionBlockPortView) {
            return false
        }
        val that = other
        return component == that.component && position == that.position && kind == that.kind && isSource == that.isSource
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + component.hashCode()
        result = 31 * result + position
        result = 31 * result + kind.hashCode()
        result = 31 * result + if (isSource) 1 else 0
        return result
    }
}