package org.fbme.ide.platform.library.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
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
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.library.LibraryFacetFactory
import org.fbme.ide.platform.persistence.Iec61499ModelFactory
import org.fbme.ide.platform.projectWizard.LibraryTemplate
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName

class NewLibraryAction : AnAction() {

    override fun actionPerformed(event: AnActionEvent) {
        val mpsProject = event.getData(MPSCommonDataKeys.MPS_PROJECT)
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
            
            val root = result.modelRoots.iterator().next() as DefaultModelRoot
            model = try {
                val fullModelName = "NewLibrary@content"
                root.createModel(SModelName(fullModelName), null, Iec61499ModelFactory.DST, Iec61499ModelFactory.TYPE)
            } catch (e: ModelCannotBeCreatedException) {
                throw RuntimeException("Model can not be created", e)
            }

            val repository = PlatformRepositoryProvider.getInstance(mpsProject)
            val initialElement = LibraryTemplate().initModel(mpsProject.project, repository, model!!)

            mpsProject.repository.modelAccess.runReadInEDT {
                val navigationSupport = NavigationSupport.getInstance()
                navigationSupport.openNode(mpsProject, initialElement.node, true, false)
                navigationSupport.selectInTree(mpsProject, initialElement.node, false)
            }

            val facetFactory = LibraryFacetFactory.CUSTOM_FACET_FACTORY

//            TODO: add factory at the FBME start
//            val facetsRegistry: FacetsRegistry = mpsProject.getComponent<FacetsRegistry>(FacetsRegistry::class.java)
//            if (facetsRegistry.getFacetFactory("library") == null) {
//                facetsRegistry.addFactory("library", facetFactory)
//            }

//            val libFacet = facetFactory.create(result)
//            result.moduleDescriptor.addFacetDescriptor(libFacet)
////            result.moduleDescriptor.moduleFacetDescriptors.add(ModuleFacetDescriptor("library", MementoImpl()))
            result.setModuleDescriptor(result.moduleDescriptor, true)
            result.save()

            result
        }



        dialog.title = "New Library"
        dialog.show()
        if (!dialog.isOK) {
            return
        }

        val solution = dialog.result ?: return

        val projectPane = ProjectPane.getInstance(event.getData(MPSCommonDataKeys.MPS_PROJECT))
        projectPane.selectModule(solution, false)

        mpsProject.modelAccess.runWriteAction {
            mpsProject.projectModules.forEach { module ->
//                TODO: import created module&model only to module/models with specific facet
                module.models.forEach {
                    val modelImporter = ModelImporter(it)
                    modelImporter.prepare(model!!.reference)
                    modelImporter.execute()
                }
            }
        }


    }

}
