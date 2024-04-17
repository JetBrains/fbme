package org.fbme.ide.platform

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory
import com.intellij.openapi.ui.DialogWrapper
import com.intellij.openapi.ui.TextFieldWithBrowseButton
import com.intellij.openapi.ui.VerticalFlowLayout
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.newSolutionDialog.NewModuleUtil
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.persistence.DefaultModelRoot
import jetbrains.mps.persistence.MementoImpl
import jetbrains.mps.persistence.ModelCannotBeCreatedException
import jetbrains.mps.project.*
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor
import jetbrains.mps.project.structure.modules.SolutionDescriptor
import jetbrains.mps.smodel.GeneralModuleFactory
import jetbrains.mps.smodel.ModuleDependencyVersions
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.vfs.IFile
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.persistence.Iec61499ModelFactory
import org.fbme.ide.platform.persistence.Iec61499ModelHeader
import org.fbme.ide.platform.projectWizard.LibraryTemplate
import org.jdom.Document
import org.jdom.Element
import org.jdom.input.SAXBuilder
import org.jdom.output.Format
import org.jdom.output.XMLOutputter
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.io.BufferedOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.zip.ZipInputStream
import javax.swing.JComponent
import javax.swing.JLabel
import javax.swing.JPanel

class ImportNxtLibraryAction: AnAction() {

    companion object {

        private fun handleSelectedFolderPath(folerPath: String, e: AnActionEvent) {
            val nxtLibNamespaceFolder = "$folerPath/Files"

//            TODO: copy all files

            // Suppose we've already copied all files, now
            // we have to parse them

            val mpsProject: MPSProject = e.getData(MPSCommonDataKeys.MPS_PROJECT)!!
            mpsProject.modelAccess.executeCommand {
                val moduleName = "NxtLib" // TODO: extract from folder name

                val moduleDir = mpsProject.project.projectFile!!.parent.path

                val root = solution.modelRoots.iterator().next() as DefaultModelRoot
                val model = try {
                    val fullModelName = if (stereotype == null) moduleName else "$moduleName@$stereotype"
                    root.createModel(SModelName(fullModelName), null, Iec61499ModelFactory.DST, Iec61499ModelFactory.TYPE)
                } catch (e: ModelCannotBeCreatedException) {
                    throw RuntimeException("Model can not be created", e)
                }
                val repository = PlatformRepositoryProvider.getInstance(project)
                val initialElement = initModel(project.project, repository, model)
                model.module.declaredDependencies
                val initialNode = initialElement.node
                project.repository.modelAccess.runReadInEDT {
                    val navigationSupport = NavigationSupport.getInstance()
                    navigationSupport.openNode(project, initialNode, true, false)
                    navigationSupport.selectInTree(project, initialNode, false)
                }
            }
        }
    }

    override fun actionPerformed(e: AnActionEvent) {
        val fileChooserDescriptor = FileChooserDescriptorFactory.createSingleFileDescriptor()
        val textFieldWithBrowseButton = TextFieldWithBrowseButton()
        textFieldWithBrowseButton.addBrowseFolderListener("Select NxtLib Archive", null, null, fileChooserDescriptor)

        val panel = JPanel(VerticalFlowLayout())
        panel.add(JLabel("Select NxtLib Folder"))
        panel.add(textFieldWithBrowseButton)

        val dialogWrapper: DialogWrapper = object : DialogWrapper(true) {
            init {
                init()
                title = "Import NxtLib"
            }

            override fun createCenterPanel(): JComponent? {
                return panel
            }
        }

        if (dialogWrapper.showAndGet()) {
            val filePath = textFieldWithBrowseButton.text
            handleSelectedFolderPath(filePath, e)
        }
    }

}
