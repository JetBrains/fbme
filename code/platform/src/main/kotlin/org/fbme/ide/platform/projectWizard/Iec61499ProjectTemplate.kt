package org.fbme.ide.platform.projectWizard

import com.intellij.openapi.startup.StartupManager
import fbme.platform.PlatformIcons
import jetbrains.mps.ide.newSolutionDialog.NewModuleUtil
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.persistence.DefaultModelRoot
import jetbrains.mps.persistence.ModelCannotBeCreatedException
import jetbrains.mps.project.MPSExtentions
import jetbrains.mps.workbench.dialogs.project.newproject.MPSProjectTemplate
import jetbrains.mps.workbench.dialogs.project.newproject.TemplateFiller
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.persistence.Iec61499ModelFactory.Companion.DST
import org.fbme.ide.platform.persistence.Iec61499ModelFactory.Companion.TYPE
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName
import javax.swing.Icon
import javax.swing.JComponent

abstract class Iec61499ProjectTemplate(
    private val settings: Iec61499SolutionSettings,
    private val name: String,
    private val descriptionText: String,
    private val icon: Icon,
    private val stereotype: String?,
) : MPSProjectTemplate {

    override fun getSettings(): JComponent {
        settings.reset()
        return settings
    }

    override fun setProjectPath(path: String) {
        settings.setProjectPath(path)
    }

    override fun checkSettings(): String? {
        NewModuleUtil.check(null, MPSExtentions.DOT_SOLUTION, settings.moduleName, settings.moduleLocation)
        return null
    }

    override fun getTemplateFiller(): TemplateFiller {
        return TemplateFiller { project ->
            val moduleName = settings.moduleName
            val moduleLocation = settings.moduleLocation
            StartupManager.getInstance(project.project).registerPostStartupActivity {
                project.modelAccess.executeCommand {
                    val solution = NewModuleUtil.createSolution(moduleName, moduleLocation, project)
                    val root = solution.modelRoots.iterator().next() as DefaultModelRoot
                    val model = try {
                        val fullModelName = if (stereotype == null) moduleName else "$moduleName@$stereotype"
                        root.createModel(SModelName(fullModelName), null, DST, TYPE)
                    } catch (e: ModelCannotBeCreatedException) {
                        throw RuntimeException("Model can not be created", e)
                    }
                    val repository = PlatformRepositoryProvider.getInstance(project)
                    val initialElement = initModel(repository, model)
                    val initialNode = (initialElement as PlatformElement).node
                    project.repository.modelAccess.runReadInEDT {
                        NavigationSupport.getInstance().openNode(project, initialNode, true, false)
                        NavigationSupport.getInstance().selectInTree(project, initialNode, false)
                    }
                }
            }
        }
    }

    abstract fun initModel(repository: PlatformRepository, model: SModel): PlatformElement

    override fun getIcon() = icon

    override fun getName() = name

    override fun getDescription() = descriptionText
}