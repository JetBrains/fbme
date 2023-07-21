package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.iec61499.fbnetwork.BrokenPortDeclaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind

class BrokenPortView(
        val isInput: Boolean,
        val declaration: BrokenPortDeclaration? = null,
        private val myComponent: NetworkComponentView? = null
) : NetworkComponentView, NetworkPortView {
    private var myOpposite: NetworkPortView? = null

    override val kind: EntryKind
        get() = myOpposite!!.kind
    override val isEditable: Boolean
        get() = false
    override val component: NetworkComponentView
        get() = myComponent ?: this

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is BrokenPortView) {
            return false
        }
        return myOpposite == other.myOpposite
    }

    override fun hashCode(): Int {
        return myOpposite.hashCode()
    }

    fun setOpposite(opposite: NetworkPortView?) {
        myOpposite = opposite
    }
}
