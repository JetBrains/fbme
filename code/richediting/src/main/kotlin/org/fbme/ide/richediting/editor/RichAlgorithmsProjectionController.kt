package org.fbme.ide.richediting.editor

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.project.Project
import jetbrains.mps.smodel.ModelAccessHelper
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.workbench.MPSDataKeys
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.*
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.jetbrains.mps.openapi.model.SNode

class RichAlgorithmsProjectionController(
        private val node: SNode,
        private val project: Project
) : EditorProjectionController {
    private val platformRepository: PlatformRepository = PlatformRepositoryProvider.getInstance(project)
    private val typeDeclaration = platformRepository.getAdapter(node, BasicFBTypeDeclaration::class.java)
            ?: error("BasicFBTypeDeclaration is null")

    override val id: String get() = "Algorithm"
    override val priority: Int get() = 1

    override val chooser: ProjectionChooser
        get() = ModelAccessHelper(project.modelAccess).runReadAction<ProjectionChooser> {
            ProjectionChooser.Composite(
                    id,
                    typeDeclaration.algorithms.map { ChooseProjectionAction(this, it.name) },
                    listOf(CreateAlgorithmAction())

            )
        }

    init {

    }

    override fun createProjection(name: String): EditorProjection {
        val algorithm = ModelAccessHelper(project.modelAccess).runReadAction<AlgorithmDeclaration> {
            typeDeclaration.algorithms.first { it.name == name }
        }
        return RichAlgorithmProjection(
                node,
                this,
                project,
                name,
                arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.algorithm"),
                algorithm
        )
    }

    inner class CreateAlgorithmAction : AnAction("New Algorithm") {
        override fun actionPerformed(event: AnActionEvent) {
            val project = event.getData(MPSDataKeys.MPS_PROJECT)
            val editor = event.getData(HeaderedEditorDataKeys.EDITOR)
            if (project == null || editor == null) {
                return
            }
            project.modelAccess.executeCommand {
                val algorithm = platformRepository.iec61499Factory.createAlgorithmDeclaration(StringIdentifier(""))
                typeDeclaration.algorithms.add(algorithm)
                editor.chooseProjection(createProjection(""))
                val component = editor.currentEditorComponent
                val editorCell = component.findCellWithId((algorithm as PlatformElement).node, "property_name")
                component.changeSelection(editorCell)
            }
        }
    }
}
