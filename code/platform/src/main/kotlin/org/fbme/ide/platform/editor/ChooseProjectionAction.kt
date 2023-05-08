package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.workbench.MPSDataKeys

class ChooseProjectionAction(
    private val controller: EditorProjectionController,
    private val projectionName: String
) : AnAction() {

    init {
        templatePresentation.setText(projectionName, false)
    }

    override fun actionPerformed(event: AnActionEvent) {
        val project = event.getData(MPSDataKeys.MPS_PROJECT)
        val editor = event.getData(HeaderedEditorDataKeys.EDITOR)
        if (project == null || editor == null) {
            return
        }
        project.modelAccess.runReadAction { editor.chooseProjection(controller.createProjection(projectionName)) }
    }
}
