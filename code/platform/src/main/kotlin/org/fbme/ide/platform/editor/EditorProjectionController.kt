package org.fbme.ide.platform.editor

import jetbrains.mps.project.Project
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode

interface EditorProjectionController {

    val id: String

    val priority: Int

    fun createProjection(name: String): EditorProjection

    fun restoreProjection(name: String, e: Element): EditorProjection? = createProjection(name)

    fun createDefaultProjection(): EditorProjection? = null

    val chooser: ProjectionChooser get() = ProjectionChooser.Simple(id, ChooseProjectionAction(this, id))

    interface Factory {
        val id: String
        fun create(node: SNode, project: Project): EditorProjectionController
        fun isApplicable(node: SNode): Boolean
    }
}
