package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.modifyModules
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.newSolutionDialog.NewModuleUtil
import jetbrains.mps.ide.projectPane.ProjectPane
import jetbrains.mps.ide.ui.dialogs.modules.NameLocationPanel
import jetbrains.mps.ide.ui.dialogs.modules.NewModuleDialog
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.persistence.DefaultModelRoot
import jetbrains.mps.persistence.ModelCannotBeCreatedException
import jetbrains.mps.project.MPSExtentions
import jetbrains.mps.project.ModelImporter
import jetbrains.mps.project.Solution
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.workbench.MPSDataKeys
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.persistence.Iec61499ModelFactory
import org.fbme.ide.platform.projectWizard.LibraryTemplate
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName

class NewLibraryAction : AnAction() {

    override fun actionPerformed(event: AnActionEvent) {
        val mpsProject = event.getData(MPSCommonDataKeys.MPS_PROJECT)
//        val virtualFolder = event.getData(MPSDataKeys.NAMESPACE)
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

        var model: SModel? = null

        dialog.withFactory {
            val result = NewModuleUtil.createSolution(cfg.moduleName, cfg.moduleLocation.absolutePath, mpsProject)
//            mpsProject.setVirtualFolder(result, virtualFolder)
            val root = result.modelRoots.iterator().next() as DefaultModelRoot
            model = try {
                val fullModelName = "NewLibrary@content"
                root.createModel(SModelName(fullModelName), null, Iec61499ModelFactory.DST, Iec61499ModelFactory.TYPE)
            } catch (e: ModelCannotBeCreatedException) {
                throw RuntimeException("Model can not be created", e)
            }
            val repository = PlatformRepositoryProvider.getInstance(mpsProject)
            val initialElement = LibraryTemplate().initModel(mpsProject.project, repository, model!!)
//            model.module.declaredDependencies
            mpsProject.repository.modelAccess.runReadInEDT {
                val navigationSupport = NavigationSupport.getInstance()
                navigationSupport.openNode(mpsProject, initialElement.node, true, false)
                navigationSupport.selectInTree(mpsProject, initialElement.node, false)
            }

            mpsProject.save()
            result
        }



        dialog.title = "New Library"
        dialog.show()
        if (!dialog.isOK) {
            return
        }

        val solution = dialog.result ?: return

        // TODO: Sync ProjectPane.rebuildTree() with NewSolution, CloneModule actions

        // TODO: Sync ProjectPane.rebuildTree() with NewSolution, CloneModule actions
        val projectPane = ProjectPane.getInstance(event.getData(MPSCommonDataKeys.MPS_PROJECT))
        projectPane.selectModule(solution, false)


        val models: ArrayList<ModelImporter> = ArrayList()
        mpsProject.modelAccess.runReadAction {
            mpsProject.repository.modules.forEach { module ->

                module.models.forEach {
//                    ModelImports(it).addModelImport(model!!.reference)
                    val modelImporter = ModelImporter(it)
                    modelImporter.prepare(model!!.reference)
                    models.add(modelImporter)
                }
            }
        }

        mpsProject.modelAccess.runWriteAction {
            for (curModel in models){
                curModel.execute()
            }
        }


    }

}
