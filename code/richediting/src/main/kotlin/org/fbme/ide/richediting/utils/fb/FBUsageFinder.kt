package org.fbme.ide.richediting.utils.fb

import jetbrains.mps.findUsages.FindUsagesManager
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.jetbrains.mps.openapi.model.SNode

object FBUsageFinder {
    fun findUsages(project: MPSProject,  fbBlock: Declaration)
    : Map<Declaration, SNode> {
        val manager = project.getComponent(FindUsagesManager::class.java)
        val platformElement = (fbBlock as PlatformElement)
        val nodes = manager.findUsages(project.scope, mutableSetOf(platformElement.node), null)
        val repository = PlatformRepositoryProvider.getInstance(project)

        val result: MutableMap<Declaration, SNode> = HashMap()
        nodes.mapNotNull {
            it.sourceNode.parent
        }.forEach {
            val declaration = repository.getAdapter(it, Declaration::class.java)

            if (declaration != null) {
                result[declaration] = it
            }
        }

        return result
    }
}
