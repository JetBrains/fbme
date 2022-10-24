package org.fbme.ide.richediting.viewmodel

import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.st.expressions.Expression
import org.jetbrains.mps.openapi.model.SNode

class InlineValueView(val opposite: FunctionBlockPortView, val expression: Expression) :
    NetworkComponentView,
    NetworkPortView {
    val associatedNode: SNode = (expression as PlatformElement).node
    override val component: NetworkComponentView
        get() = this
    override val kind: EntryKind
        get() = EntryKind.DATA
    override val isEditable: Boolean
        get() = false

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is InlineValueView) {
            return false
        }
        return opposite == other.opposite
    }

    override fun hashCode(): Int {
        return opposite.hashCode()
    }

}
