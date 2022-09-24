package org.fbme.ide.richediting.viewmodel

import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.jetbrains.mps.openapi.model.SNode

class FunctionBlockView(val component: FunctionBlockDeclarationBase, isEditable: Boolean) : NetworkComponentView {
    val associatedNode: SNode = (component as PlatformElement).node
    private val myTypeDescriptor: TypeDescriptorAdapter
    override val isEditable: Boolean

    val type: FBTypeDescriptor
        get() = myTypeDescriptor
    val brokenPorts: TypeDescriptorAdapter.BrokenPorts
        get() = myTypeDescriptor.brokenPorts

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is FunctionBlockView) {
            return false
        }
        return component == other.component
    }

    override fun hashCode(): Int {
        return component.hashCode()
    }

    init {
        myTypeDescriptor = TypeDescriptorAdapter(component.type)
        this.isEditable = isEditable
    }
}
