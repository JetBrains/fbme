package org.fbme.ide.richediting.editor

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.project.Project
import jetbrains.mps.smodel.ModelAccessHelper
import jetbrains.mps.workbench.MPSDataKeys
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.ChooseProjectionAction
import org.fbme.ide.platform.editor.EditorProjection
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.HeaderedEditorDataKeys
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode
import java.util.stream.Collectors

class RichApplicationProjectionController(
    private val myNode: SNode,
    private val myProject: Project
) : EditorProjectionController {
    private val mySystem: SystemDeclaration
    private val myRepository: PlatformRepository = PlatformRepositoryProvider.getInstance(myProject)
    override val id: String
        get() = "Application"
    override val chooseProjectionActions: List<AnAction>
        get() {
            return ModelAccessHelper(myProject.modelAccess).runReadAction<List<AnAction>> {
                mySystem.applications.stream()
                    .map { ChooseProjectionAction(this, it.name) }
                    .collect(Collectors.toList())
            }
        }
    override val createProjectionActions: List<AnAction>
        get() {
            return listOf<AnAction>(object : AnAction("New Application") {
                override fun actionPerformed(event: AnActionEvent) {
                    val project = event.getData(MPSDataKeys.MPS_PROJECT)
                    val editor = event.getData(HeaderedEditorDataKeys.EDITOR)
                    if (project == null || editor == null) {
                        return
                    }
                    project.modelAccess.executeCommand {
                        val application =
                            myRepository.iec61499Factory.createApplicationDeclaration(StringIdentifier(""))
                        mySystem.applications.add(application)
                        editor.chooseProjection(createProjection(""))
                    }
                }
            })
        }

    init {
        mySystem = myRepository.getAdapter(myNode, SystemDeclaration::class.java)
            ?: error("SystemDeclaration is null")
    }

    override fun createProjection(name: String): EditorProjection {
        val app = ModelAccessHelper(myProject.modelAccess).runReadAction<ApplicationDeclaration> {
            mySystem.applications.stream()
                .filter { it.name == name }
                .findFirst()
                .orElse(null)
        }
        val instance = NetworkInstance.createForApplication(app)
        return createProjection0(name, instance)
    }

    override fun restoreProjection(name: String, e: Element): EditorProjection {
        val ref = e.getAttributeValue(RichApplicationProjection.PERSISTENCE_KEY)
        val repository = PlatformRepositoryProvider.getInstance(myProject)
        val instance = if (ref != null) MPSNetworkInstanceReference.deserialize(ref).resolve(repository) else null
        return instance?.let { createProjection0(name, it) } ?: createProjection(name)
    }

    private fun createProjection0(name: String, instance: NetworkInstance): EditorProjection {
        return RichApplicationProjection(
            myNode,
            this,
            name,
            arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.system_app"),
            instance,
            myProject
        )
    }
}
