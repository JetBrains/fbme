package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.EditorProjection
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode

class RichNetworkProjectionController(
        private val node: SNode,
        private val project: Project
) : EditorProjectionController {
    override val id: String get() = "Network"
    override val priority: Int get() = 1

    override fun createProjection(name: String): EditorProjection {
        return if (name == id) {
            createProjectionInternal(name)
        } else {
            throw IllegalArgumentException("Unsupported projection")
        }
    }

    override fun restoreProjection(name: String, e: Element): EditorProjection {
        if (name == id) {
            val ref = e.getAttributeValue(NetworkInstanceEditorProjection.PERSISTENCE_KEY)
            val repository = PlatformRepositoryProvider.getInstance(project)
            val declaration = repository.getAdapter(node, Declaration::class.java)
            val instance = when {
                ref != null -> MPSNetworkInstanceReference.deserialize(ref).resolve(repository)
                declaration != null -> NetworkInstance.createForDeclaration(declaration)
                else -> error("Declaration is null")
            }
            return NetworkInstanceEditorProjection(node, this, name, instance!!, project)
        } else {
            throw IllegalArgumentException("Unsupported projection")
        }
    }

    private fun createProjectionInternal(name: String): NetworkInstanceEditorProjection {
        val repository: PlatformElementsOwner = PlatformRepositoryProvider.getInstance(project)
        val instance = NetworkInstance.createForDeclaration(
                repository.getAdapter(node, Declaration::class.java) ?: error("Declaration is null")
        )
        return NetworkInstanceEditorProjection(node, this, name, instance, project)
    }
}
