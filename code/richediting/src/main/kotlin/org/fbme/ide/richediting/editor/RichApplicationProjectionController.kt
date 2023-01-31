package org.fbme.ide.richediting.editor

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.project.Project
import jetbrains.mps.smodel.ModelAccessHelper
import jetbrains.mps.workbench.MPSDataKeys
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.*
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode

class RichApplicationProjectionController(
        private val node: SNode,
        private val project: Project
) : EditorProjectionController {
    private val repository: PlatformRepository = PlatformRepositoryProvider.getInstance(project)

    private val system = repository.getAdapter(node, SystemDeclaration::class.java)
            ?: error("SystemDeclaration is null")

    override val id: String get() = "Application"
    override val priority: Int get() = 2

    override val chooser: ProjectionChooser
        get() = ModelAccessHelper(project.modelAccess).runReadAction<ProjectionChooser> {
            ProjectionChooser.Composite(
                    id,
                    system.applications.map { ChooseProjectionAction(this, it.name) },
                    listOf(CreateApplicationAction())
            )
        }

    inner class CreateApplicationAction : AnAction("New Application") {
        override fun actionPerformed(event: AnActionEvent) {
            val project = event.getData(MPSDataKeys.MPS_PROJECT)
            val editor = event.getData(HeaderedEditorDataKeys.EDITOR)
            if (project == null || editor == null) {
                return
            }
            project.modelAccess.executeCommand {
                val application =
                        repository.iec61499Factory.createApplicationDeclaration(StringIdentifier(""))
                system.applications.add(application)
                editor.chooseProjection(createProjection(""))
            }
        }
    }

    init {

    }

    override fun createProjection(name: String): EditorProjection {
        val app = ModelAccessHelper(project.modelAccess).runReadAction<ApplicationDeclaration> {
            system.applications.stream()
                    .filter { it.name == name }
                    .findFirst()
                    .orElse(null)
        }
        val instance = NetworkInstance.createForApplication(app)
        return createProjection0(name, instance)
    }

    override fun restoreProjection(name: String, e: Element): EditorProjection {
        val ref = e.getAttributeValue(RichApplicationProjection.PERSISTENCE_KEY)
        val repository = PlatformRepositoryProvider.getInstance(project)
        val instance = if (ref != null) MPSNetworkInstanceReference.deserialize(ref).resolve(repository) else null
        return instance?.let { createProjection0(name, it) } ?: createProjection(name)
    }

    private fun createProjection0(name: String, instance: NetworkInstance): EditorProjection {
        return RichApplicationProjection(
                node,
                this,
                name,
                arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.system_app"),
                instance,
                project
        )
    }
}
