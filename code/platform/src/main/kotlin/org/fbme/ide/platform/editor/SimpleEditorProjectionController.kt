package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.AnAction
import jetbrains.mps.project.Project
import org.jetbrains.mps.openapi.model.SNode

class SimpleEditorProjectionController(
    private val myNode: SNode,
    override val id: String,
    private val myProject: Project,
    private val myHints: Array<String>,
    private val myDefault: Boolean
) : EditorProjectionController {
    override val chooseProjectionActions: List<AnAction>
        get() = listOf<AnAction>(ChooseProjectionAction(this, id))
    override val createProjectionActions: List<AnAction>
        get() = emptyList()

    override fun createProjection(name: String): EditorProjection {
        return if (name == id) {
            createProjection0()
        } else {
            throw IllegalArgumentException("Unknown projection")
        }
    }

    override fun createDefaultProjection(): EditorProjection? {
        return if (myDefault) {
            createProjection0()
        } else {
            null
        }
    }

    private fun createProjection0(): SimpleEditorProjection {
        return SimpleEditorProjection(myNode, this, myProject, id, myHints)
    }
}
