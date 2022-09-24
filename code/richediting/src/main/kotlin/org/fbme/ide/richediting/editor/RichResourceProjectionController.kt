package org.fbme.ide.richediting.editor

import com.intellij.openapi.actionSystem.AnAction
import jetbrains.mps.project.Project
import jetbrains.mps.smodel.ModelAccessHelper
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.ChooseProjectionAction
import org.fbme.ide.platform.editor.EditorProjection
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode
import java.util.stream.Collectors

class RichResourceProjectionController(
    private val myNode: SNode,
    private val myProject: Project
) : EditorProjectionController {
    private val mySystem: SystemDeclaration = PlatformRepositoryProvider
        .getInstance(myProject)
        .getAdapter(myNode, SystemDeclaration::class.java)
        ?: error("System declaration is null")
    override val id: String
        get() = "Resource"
    override val chooseProjectionActions: List<AnAction>
        get() {
            return ModelAccessHelper(myProject.modelAccess).runReadAction<List<AnAction>> {
                mySystem.devices.stream()
                    .flatMap { it.resources.stream() }
                    .map { ChooseProjectionAction(this, it.container.name + "." + it.name) }
                    .collect(Collectors.toList())
            }
        }
    override val createProjectionActions: List<AnAction>
        get() {
            return emptyList()
        }

    override fun createProjection(name: String): EditorProjection {
        val names = name.split('.').toTypedArray()
        val deviceName = names[0]
        val resourceName = names[1]
        val resource = ModelAccessHelper(myProject.modelAccess).runReadAction<ResourceDeclaration> {
            mySystem.devices.stream()
                .filter { it.name == deviceName }
                .findFirst()
                .orElseThrow()
                .resources.stream()
                .filter { it.name == resourceName }
                .findFirst()
                .orElseThrow()
        }
        val instance = NetworkInstance.createForResource(resource)
        return createProjection0(name, instance)
    }

    override fun restoreProjection(name: String, e: Element): EditorProjection {
        val repository = PlatformRepositoryProvider.getInstance(myProject)
        val ref = e.getAttributeValue(RichApplicationProjection.PERSISTENCE_KEY)
        val instance = if (ref != null) MPSNetworkInstanceReference.deserialize(ref).resolve(repository) else null
        return instance?.let { createProjection0(name, it) } ?: createProjection(name)
    }

    private fun createProjection0(name: String, instance: NetworkInstance): EditorProjection {
        return RichResourceProjection(
            myNode,
            this,
            name,
            arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.system_res"),
            instance,
            myProject
        )
    }
}
