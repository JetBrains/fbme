package org.fbme.ide.platform.editor

import jetbrains.mps.smodel.runtime.IconResourceUtil
import org.fbme.ide.iec61499.repository.PlatformElement
import org.jetbrains.mps.openapi.model.SNode

data class ProjectionHeaderInfo(
        val rootDeclaration: NavigatableDeclaration,
        val subDeclarations: List<NavigatableDeclaration>,
        val projectionStereotype: String
) {
    val rootNode: SNode get() = (rootDeclaration.declaration as PlatformElement).node

    val icon get() = IconResourceUtil.getIconResourceForNode(rootNode)

}