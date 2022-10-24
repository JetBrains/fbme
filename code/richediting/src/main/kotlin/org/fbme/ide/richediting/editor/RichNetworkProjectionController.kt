package org.fbme.ide.richediting.editor

import com.intellij.openapi.actionSystem.AnAction
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.ChooseProjectionAction
import org.fbme.ide.platform.editor.EditorProjection
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode

class RichNetworkProjectionController(
    private val myNode: SNode,
    private val myProject: Project
) : EditorProjectionController {
    override val id: String
        get() = "Network"
    override val chooseProjectionActions: List<AnAction>
        get() {
            return listOf<AnAction>(ChooseProjectionAction(this, "Network"))
        }
    override val createProjectionActions: List<AnAction>
        get() {
            return emptyList()
        }

    override fun createProjection(name: String): EditorProjection {
        return if (name == id) {
            createProjectionInternal(name)
        } else {
            throw IllegalArgumentException("Unsupported projection")
        }
    }

    override fun restoreProjection(name: String, e: Element): EditorProjection {
        return if (name == id) {
            val ref = e.getAttributeValue(NetworkInstanceEditorProjection.PERSISTENCE_KEY)
            val repository = PlatformRepositoryProvider.getInstance(myProject)
            var instance = if (ref != null) MPSNetworkInstanceReference.deserialize(ref).resolve(repository) else null
            if (instance == null) {
                instance = NetworkInstance.createForDeclaration(
                    repository.getAdapter(myNode, Declaration::class.java) ?: error("Declaration is null")
                )
            }
            NetworkInstanceEditorProjection(myNode, this, name, instance, myProject)
        } else {
            throw IllegalArgumentException("Unsupported projection")
        }
    }

    private fun createProjectionInternal(name: String): NetworkInstanceEditorProjection {
        val repository: PlatformElementsOwner = PlatformRepositoryProvider.getInstance(myProject)
        val instance = NetworkInstance.createForDeclaration(
            repository.getAdapter(myNode, Declaration::class.java) ?: error("Declaration is null")
        )
        return NetworkInstanceEditorProjection(myNode, this, name, instance, myProject)
    }
}
