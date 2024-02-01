package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.newSolutionDialog.NewModuleUtil
import jetbrains.mps.ide.projectPane.ProjectPane
import jetbrains.mps.ide.ui.dialogs.modules.NameLocationPanel
import jetbrains.mps.ide.ui.dialogs.modules.NewModuleDialog
import jetbrains.mps.project.MPSExtentions
import jetbrains.mps.project.Solution
import jetbrains.mps.workbench.MPSDataKeys

class NewLibraryAction : AnAction() {

    override fun actionPerformed(event: AnActionEvent) {
        val mpsProject = event.getData(MPSCommonDataKeys.MPS_PROJECT)
        val virtualFolder = event.getData(MPSDataKeys.NAMESPACE)
        val cfg =
            NameLocationPanel(NewModuleDialog.projectHome(mpsProject!!), "Solution name:", "Solution file location:")
        cfg.withDefaults("NewSolution", "solutions")
        val dialog = NewModuleDialog<Solution>(mpsProject, cfg)
        dialog.withCheck {
            NewModuleUtil.check(
                mpsProject,
                MPSExtentions.DOT_SOLUTION,
                cfg.moduleName,
                cfg.moduleLocation.absolutePath
            )
        }
        dialog.withFactory {
            val result = NewModuleUtil.createSolution(cfg.moduleName, cfg.moduleLocation.absolutePath, mpsProject)
            mpsProject.setVirtualFolder(result, virtualFolder)
            mpsProject.save()
            result
        }

        dialog.title = "New Solution"
        dialog.show()
        if (!dialog.isOK) {
            return
        }

        val solution = dialog.result ?: return

        // TODO: Sync ProjectPane.rebuildTree() with NewSolution, CloneModule actions

        // TODO: Sync ProjectPane.rebuildTree() with NewSolution, CloneModule actions
        val projectPane = ProjectPane.getInstance(event.getData(MPSCommonDataKeys.MPS_PROJECT))
        projectPane.selectModule(solution, false)
    }

}
