package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import jetbrains.mps.smodel.ModelAccessHelper
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.ChooseProjectionAction
import org.fbme.ide.platform.editor.EditorProjection
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.ProjectionChooser
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode

class RichResourceProjectionController(
        private val node: SNode,
        private val project: Project
) : EditorProjectionController {
    private val system: SystemDeclaration = PlatformRepositoryProvider
            .getInstance(project)
            .getAdapter(node, SystemDeclaration::class.java)
            ?: error("System declaration is null")

    override val id: String get() = "Resource"
    override val priority: Int get() = 1

    override val chooser: ProjectionChooser
        get() = ModelAccessHelper(project.modelAccess).runReadAction<ProjectionChooser> {
            ProjectionChooser.Composite(
                    id,
                    system.devices.flatMap { it.resources }
                            .map { ChooseProjectionAction(this, it.container.name + "." + it.name) },
                    emptyList()

            )
        }

    override fun createProjection(name: String): EditorProjection {
        val names = name.split('.').toTypedArray()
        val deviceName = names[0]
        val resourceName = names[1]
        val resource = ModelAccessHelper(project.modelAccess).runReadAction<ResourceDeclaration> {
            system.devices.first { it.name == deviceName }
                    .resources.first { it.name == resourceName }
        }
        val instance = NetworkInstance.createForResource(resource)
        return createProjection0(name, instance)
    }

    override fun restoreProjection(name: String, e: Element): EditorProjection {
        val repository = PlatformRepositoryProvider.getInstance(project)
        val ref = e.getAttributeValue(RichApplicationProjection.PERSISTENCE_KEY)
        val instance = if (ref != null) MPSNetworkInstanceReference.deserialize(ref).resolve(repository) else null
        return instance?.let { createProjection0(name, it) } ?: createProjection(name)
    }

    private fun createProjection0(name: String, instance: NetworkInstance): EditorProjection {
        return RichResourceProjection(
                node,
                this,
                name,
                arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.system_res"),
                instance,
                project
        )
    }
}
