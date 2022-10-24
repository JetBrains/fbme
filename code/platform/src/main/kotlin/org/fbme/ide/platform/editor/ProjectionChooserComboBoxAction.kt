package org.fbme.ide.platform.editor

import com.intellij.ide.DataManager
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.DefaultActionGroup
import com.intellij.openapi.actionSystem.LangDataKeys
import com.intellij.openapi.actionSystem.ex.ComboBoxAction
import jetbrains.mps.nodefs.MPSNodeVirtualFile
import jetbrains.mps.project.Project
import jetbrains.mps.workbench.MPSDataKeys
import javax.swing.JComponent

class ProjectionChooserComboBoxAction(private val myEditor: HeaderedNodeEditor) : ComboBoxAction() {
    override fun update(e: AnActionEvent) {
        val presentation = e.presentation
        presentation.text = myEditor.currentProjection!!.name
    }

    override fun createPopupActionGroup(component: JComponent): DefaultActionGroup {
        val context = DataManager.getInstance().getDataContext(component)
        val group = DefaultActionGroup()
        val vf = context.getData(LangDataKeys.VIRTUAL_FILE)
        val project: Project? = context.getData(MPSDataKeys.MPS_PROJECT)
        if (project != null && vf is MPSNodeVirtualFile) {
            project.modelAccess.runReadAction {
                val node = requireNotNull(vf.node)
                val controllers: List<EditorProjectionController> =
                    EditorProjectionControllerRegistry.instance.factories
                        .filter { it.isApplicable(node) }
                        .map { it.create(node, project) }
                for (controller in controllers) {
                    group.addAll(controller.chooseProjectionActions)
                }
                group.addSeparator()
                for (controller in controllers) {
                    group.addAll(controller.createProjectionActions)
                }
            }
        }
        return group
    }
}
