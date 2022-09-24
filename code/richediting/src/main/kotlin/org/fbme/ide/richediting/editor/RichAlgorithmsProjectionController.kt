package org.fbme.ide.richediting.editor

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.project.Project
import jetbrains.mps.smodel.ModelAccessHelper
import jetbrains.mps.workbench.MPSDataKeys
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.editor.ChooseProjectionAction
import org.fbme.ide.platform.editor.EditorProjection
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.HeaderedEditorDataKeys
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.jetbrains.mps.openapi.model.SNode

class RichAlgorithmsProjectionController(
    private val myNode: SNode,
    private val myProject: Project
) : EditorProjectionController {
    private val myTypeDeclaration: BasicFBTypeDeclaration
    private val myPlatformRepository: PlatformRepository = PlatformRepositoryProvider.getInstance(myProject)
    override val id: String
        get() = "Algorithm"
    override val chooseProjectionActions: List<AnAction>
        get() {
            return ModelAccessHelper(myProject.modelAccess).runReadAction<List<AnAction>> {
                myTypeDeclaration.algorithms.map { ChooseProjectionAction(this, it.name) }
            }
        }
    override val createProjectionActions: List<AnAction>
        get() {
            return listOf<AnAction>(object : AnAction("New Algorithm") {
                override fun actionPerformed(event: AnActionEvent) {
                    val project = event.getData(MPSDataKeys.MPS_PROJECT)
                    val editor = event.getData(HeaderedEditorDataKeys.EDITOR)
                    if (project == null || editor == null) {
                        return
                    }
                    project.modelAccess.executeCommand {
                        val algorithm =
                            myPlatformRepository.iec61499Factory.createAlgorithmDeclaration(StringIdentifier(""))
                        myTypeDeclaration.algorithms.add(algorithm)
                        editor.chooseProjection(createProjection(""))
                        val component = editor.currentEditorComponent
                        component.changeSelection(
                            component.findNodeCellWithRole(
                                (algorithm as PlatformElement).node,
                                "name"
                            )!!
                        )
                    }
                }
            })
        }

    init {
        myTypeDeclaration = myPlatformRepository.getAdapter(myNode, BasicFBTypeDeclaration::class.java)
            ?: error("BasicFBTypeDeclaration is null")
    }

    override fun createProjection(name: String): EditorProjection {
        val algorithm = ModelAccessHelper(myProject.modelAccess).runReadAction<AlgorithmDeclaration> {
            myTypeDeclaration.algorithms
                .stream()
                .filter { it.name == name }
                .findFirst()
                .orElseThrow()
        }
        return RichAlgorithmProjection(
            myNode,
            this,
            myProject,
            name,
            arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.algorithm"),
            algorithm
        )
    }
}
