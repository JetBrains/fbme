package org.fbme.ide.platform

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory
import com.intellij.openapi.ui.DialogWrapper
import com.intellij.openapi.ui.TextFieldWithBrowseButton
import com.intellij.openapi.ui.VerticalFlowLayout
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.persistence.DefaultModelRoot
import jetbrains.mps.persistence.MementoImpl
import jetbrains.mps.project.ModuleId
import jetbrains.mps.project.ProjectPathUtil
import jetbrains.mps.project.Solution
import jetbrains.mps.project.StandaloneMPSProject
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor
import jetbrains.mps.project.structure.modules.SolutionDescriptor
import jetbrains.mps.smodel.GeneralModuleFactory
import jetbrains.mps.smodel.ModuleDependencyVersions
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.vfs.IFile
import java.io.BufferedOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.zip.ZipInputStream
import javax.swing.JComponent
import javax.swing.JLabel
import javax.swing.JPanel


class ImportLibraryAction: AnAction() {

    companion object {
        fun unzip(zipFilePath: String, targetDirectoryPath: String) {
            val buffer = ByteArray(1024)
            val zipFile = File(zipFilePath)
            val folder = File(targetDirectoryPath)
            if (!folder.exists()) {
                folder.mkdirs()
            }

            ZipInputStream(FileInputStream(zipFile)).use { zis ->
                var zipEntry = zis.nextEntry
                while (zipEntry != null) {
                    val newFile = File(folder, zipEntry.name)
                    if (zipEntry.isDirectory) {
                        newFile.mkdirs()
                    } else {
                        File(newFile.parent).mkdirs()

                        FileOutputStream(newFile).use { fos ->
                            var len: Int
                            BufferedOutputStream(fos, buffer.size).use { bos ->
                                while (zis.read(buffer).also { len = it } > 0) {
                                    bos.write(buffer, 0, len)
                                }
                            }
                        }
                    }
                    zipEntry = zis.nextEntry
                }
                zis.closeEntry()
            }
        }

        private fun getModuleFile(namespace: String, rootPath: IFile, extension: String): IFile {
            return rootPath.findChild(namespace + extension)
        }

        private fun createNewSolutionDescriptor(namespace: String, descriptorFile: IFile): SolutionDescriptor {
            val descriptor = SolutionDescriptor()
            descriptor.namespace = namespace
            descriptor.id = ModuleId.regular()
            val moduleLocation = descriptorFile.parent
            val modelsDir = moduleLocation!!.findChild("models")

            modelsDir.mkdirs()
            descriptor.modelRootDescriptors.add(
                DefaultModelRoot.createDescriptor(
                    modelsDir.parent!!,
                    *arrayOf(modelsDir)
                )
            )
            descriptor.moduleFacetDescriptors.add(ModuleFacetDescriptor("java", MementoImpl()))
            ProjectPathUtil.setGeneratorOutputPath(descriptor, moduleLocation!!.findChild("source_gen").path)
            return descriptor
        }

        private fun handleSelectedFilePath(filePath: String, e: AnActionEvent) {
            val mpsProject = e.getData(MPSCommonDataKeys.MPS_PROJECT) as StandaloneMPSProject

            val zipFilePath = filePath
            val targetDirectoryPath = mpsProject.project.basePath + "/solutions"

            unzip(zipFilePath, targetDirectoryPath)

            val namespace = "Runtime.Base1"

            mpsProject.modelAccess.runWriteAction {
//            TODO: are there any issues with specific model(how do IEC61499 model gets loaded?)

                val descriptorFile = getModuleFile(namespace,
                    mpsProject.getFileSystem().getFile(targetDirectoryPath + "/Runtime.Base1"),
                    ".msd")

//            NOTE: Before importing I've changed the "ref=" parameter, and haven't changed the uuid of the solution in
//            .msd file
                val descriptor = createNewSolutionDescriptor(namespace, descriptorFile)
                val module = GeneralModuleFactory().instantiate(descriptor, descriptorFile) as Solution
                mpsProject.addModule(module)
                ModuleDependencyVersions(
                    (mpsProject.getComponent<LanguageRegistry>(LanguageRegistry::class.java) as LanguageRegistry)!!,
                    mpsProject.getRepository()
                ).update(module)
                module.save()
            }

//        return module

            println("Created?")
        }
    }

    override fun actionPerformed(e: AnActionEvent) {
        // TODO: (SEE the same note at the ExportLIbraryAction.kt
        // consider rename solution or it's id in .mds or header file in order to avoid id conflicts
        val fileChooserDescriptor = FileChooserDescriptorFactory.createSingleFileDescriptor()
        val textFieldWithBrowseButton = TextFieldWithBrowseButton()
        textFieldWithBrowseButton.addBrowseFolderListener("Select Archive", null, null, fileChooserDescriptor)

        val panel = JPanel(VerticalFlowLayout())
        panel.add(JLabel("Select Archive:"))
        panel.add(textFieldWithBrowseButton)

        val dialogWrapper: DialogWrapper = object : DialogWrapper(true) {
            init {
                init()
                title = "Import Library"
            }

            override fun createCenterPanel(): JComponent? {
                return panel
            }
        }

        if (dialogWrapper.showAndGet()) {
            val filePath = textFieldWithBrowseButton.text
            handleSelectedFilePath(filePath, e)
        }
    }
}
