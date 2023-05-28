package org.fbme.ide.richediting.utils

import com.intellij.ide.DataManager
import jetbrains.mps.ide.project.ProjectHelper
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.project.MPSProject
import jetbrains.mps.workbench.MPSDataKeys
import java.awt.Component

object ProjectProvider {
    /**
     * This solution doesn't work if component is headless and doesn't belong to UI hierarchy.
     */
    fun getInstance(context: EditorContext): MPSProject? {
        val component: Component = context.editorComponent as Component
        return MPSDataKeys.MPS_PROJECT.getData(DataManager.getInstance().getDataContext(component))
    }

    /**
     * This solution depends on project with which repository have been initialized.
     */
    fun  getInstanceFromRepository(context: EditorContext): MPSProject? {
        return ProjectHelper.getProject(context.repository)?.let { project ->
            ProjectHelper.toIdeaProject(project)?.let {ideaProject ->
                ProjectHelper.fromIdeaProject(ideaProject)
            }
        }
    }
}
