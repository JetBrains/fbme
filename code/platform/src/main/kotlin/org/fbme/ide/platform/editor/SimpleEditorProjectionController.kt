package org.fbme.ide.platform.editor

import jetbrains.mps.project.Project
import org.jetbrains.mps.openapi.model.SNode

class SimpleEditorProjectionController(
        private val node: SNode,
        override val id: String,
        private val project: Project,
        private val hints: Array<String>,
        private val hasDefault: Boolean,
        override val priority: Int
) : EditorProjectionController {

    override val chooser: ProjectionChooser
        get() = ProjectionChooser.Simple(id, ChooseProjectionAction(this, id))

    override fun createProjection(name: String): EditorProjection {
        return if (name == id) {
            createProjection0()
        } else {
            throw IllegalArgumentException("Unknown projection")
        }
    }

    override fun createDefaultProjection(): EditorProjection? {
        return if (hasDefault) createProjection0() else null
    }

    private fun createProjection0(): SimpleEditorProjection {
        return SimpleEditorProjection(node, this, project, id, hints)
    }
}
