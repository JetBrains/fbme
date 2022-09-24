package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.AnAction
import jetbrains.mps.project.Project
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SNode

interface EditorProjectionController {
    val id: String
    fun createProjection(name: String): EditorProjection
    fun restoreProjection(name: String, e: Element): EditorProjection? {
        return createProjection(name)
    }

    fun createDefaultProjection(): EditorProjection? {
        return null
    }

    val chooseProjectionActions: List<AnAction>
    val createProjectionActions: List<AnAction>

    interface Factory {
        val id: String
        fun create(node: SNode, project: Project): EditorProjectionController
        fun isApplicable(node: SNode): Boolean
    }
}
