package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.jetbrains.mps.openapi.model.SNode

data class BrokenPortView(val opposite: FunctionBlockPortView, val associatedNode: SNode, val presentation: String) :
    NetworkComponentView,
    NetworkPortView {

    override val kind: EntryKind
        get() = opposite.kind
    override val isEditable: Boolean
        get() = false
    override val component: NetworkComponentView
        get() = this
}
