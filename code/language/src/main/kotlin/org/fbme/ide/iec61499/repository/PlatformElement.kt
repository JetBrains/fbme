package org.fbme.ide.iec61499.repository

import jetbrains.mps.smodel.CopyUtil
import org.fbme.lib.common.Element
import org.jetbrains.mps.openapi.model.SNode

interface PlatformElement : Element {
    val node: SNode
    val owner: PlatformElementsOwner
    override fun copy(): Element {
        return owner.getAdapter(CopyUtil.copy(node), javaClass)!!
    }
}
