package org.fbme.ide.iec61499.repository

import org.fbme.lib.common.Element
import org.jetbrains.mps.openapi.model.SNode

interface PlatformElement : Element {
    val node: SNode
    val owner: PlatformElementsOwner
}