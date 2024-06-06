package org.fbme.ide.platform.library.actions

import com.intellij.notification.Notification
import com.intellij.notification.NotificationType
import com.intellij.notification.Notifications
import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.DialogWrapper
import com.intellij.openapi.ui.TextFieldWithBrowseButton
import com.intellij.openapi.ui.VerticalFlowLayout
import jetbrains.mps.extapi.model.SModelSimpleHeader
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.newSolutionDialog.NewModuleUtil
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.persistence.DefaultModelRoot
import jetbrains.mps.persistence.ModelCannotBeCreatedException
import jetbrains.mps.project.*
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.util.JDOMUtil
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.converter.PlatformConverter
import org.fbme.ide.platform.persistence.Iec61499ModelFactory
import org.fbme.ide.platform.persistence.Iec61499ModelHeader
import org.jdom.Document
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.ModelLoadException
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.io.*
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.util.stream.Collectors
import javax.swing.JComponent
import javax.swing.JLabel
import javax.swing.JPanel

class ImportNxtLibraryAction: AnAction() {

    companion object {

        val NAMESPACES_FILE_EXTENSION = ".iecproj"
        val NAMESPACES_XML_TAG = "Namespaces"
        val NAMESPACE_XML_TAG = "Ns"
        val NAMESPACE_PARAMETER_XML_TAG = "Name"
        val FB_XML_TAG = "FB"
        val FB_PARAMETER_XML_TAG = "Name"

        fun extractNamespaces(folderPath: String): HashMap<String, String> {
            val result = HashMap<String, String>()

            val iecprojFilePath = Files.walk(Paths.get(folderPath))
                .filter { path: Path -> path.toString().endsWith(NAMESPACES_FILE_EXTENSION) }
                .collect(Collectors.toList())
                .firstOrNull() ?: throw RuntimeException("No .iecproj file found in the directory")

            BufferedReader(FileReader(iecprojFilePath.toFile())).use { reader ->
                val doc = JDOMUtil.loadDocument(reader)
                val rootElement = doc.rootElement

                val namespacesElement = rootElement.getChild(NAMESPACES_XML_TAG, rootElement.namespace)

                for (nsElement in namespacesElement.getChildren(NAMESPACE_XML_TAG, rootElement.namespace)) {
                    val namespaceName = nsElement.getAttributeValue(NAMESPACE_PARAMETER_XML_TAG)
                    val fbNames = nsElement.getChildren(FB_XML_TAG, rootElement.namespace)
                        .map { it.getAttributeValue(FB_PARAMETER_XML_TAG) }
                    // for all fbNames in the namespace, add the namespaceName to the result
                    fbNames.forEach { result[it] = namespaceName }
                }
            }

            return result
        }


        fun initModel(project: Project, repository: PlatformRepository, model: SModel, moduleName: String, folderPath: String): PlatformElement {
            val nxtLibNamespaceFolder = "$folderPath/Files"

            val namespaces = extractNamespaces(folderPath)

            val modelId = SModelId.generate()
            val modelName = "Library@content"

            val ref = PersistenceFacade.getInstance().createModelReference(null, modelId, modelName)
            val header: SModelSimpleHeader = Iec61499ModelHeader(ref, emptyList())

            val entries = loadEntries(File(nxtLibNamespaceFolder))

            val errorEntries = mutableSetOf<File>()
            for (entry in entries) {
                try {
                    loadRootFromFile(header, entry, model, namespaces)
                } catch (e: Exception) {
//                    errorEntries += entry
                }
            }
            if (errorEntries.isNotEmpty()) {
                val notification = Notification(
                    "fbme.integration.nxt",
                    "Error during import",
                    "Failed to load ${errorEntries.size} documents: ${errorEntries.joinToString { it.name }}",
                    NotificationType.ERROR
                )
                Notifications.Bus.notify(notification, project)
            }
            val first = model.rootNodes.firstOrNull()
            if (first != null) {
                return repository.adapter<PlatformElement>(first)
            }
            val result = repository.iec61499Factory.createBasicFBTypeDeclaration(null)
            result.name = "EmptyBasicFB"
            return result as PlatformElement
        }

        @Throws(ModelLoadException::class)
        fun loadRootFromFile(header: SModelSimpleHeader, documentFile: File, model: SModel, namespaces: HashMap<String, String>) {
            BufferedReader(FileReader(documentFile)).use { reader ->
                val doc = JDOMUtil.loadDocument(reader)
                val node = convertRootNode(header.modelReference, doc, documentFile.extension)
                if (node != null) {
                    val virtualPackage = namespaces[documentFile.name]
                    if (virtualPackage != null && virtualPackage.isNotEmpty()) {
                        node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
                    }
                    model.addRootNode(node)
                }
            }
        }

        private fun convertRootNode(reference: SModelReference, doc: Document, fileExtension: String?): SNode? {
            val owner = PlatformElementsOwner()
            val configuration = PlatformConverter.STANDARD_CONFIG_FACTORY.createConfiguration(owner)
            val converter = PlatformConverter.create(configuration, reference, doc)
            return when (fileExtension) {
                Iec61499ModelFactory.FBT_FILE_EXT -> (converter.convertFBType() as PlatformElement).node
                Iec61499ModelFactory.ADP_FILE_EXT -> (converter.convertAdapterType() as PlatformElement).node
                Iec61499ModelFactory.SUB_FILE_EXT -> (converter.convertSubapplicationType() as PlatformElement).node
                Iec61499ModelFactory.RES_FILE_EXT -> (converter.convertResourceType() as PlatformElement).node
                Iec61499ModelFactory.DEV_FILE_EXT -> (converter.convertDeviceType() as PlatformElement).node
                Iec61499ModelFactory.SEG_FILE_EXT -> (converter.convertSegmentType() as PlatformElement).node
                Iec61499ModelFactory.SYS_FILE_EXT -> (converter.convertSystemConfiguration() as PlatformElement).node
                else -> null
            }
        }

        private fun supportedFileExtension(fileExt: String): Boolean {
            return fileExt == Iec61499ModelFactory.FBT_FILE_EXT
                    || fileExt == Iec61499ModelFactory.ADP_FILE_EXT
                    || fileExt == Iec61499ModelFactory.SUB_FILE_EXT
                    || fileExt == Iec61499ModelFactory.RES_FILE_EXT
                    || fileExt == Iec61499ModelFactory.DEV_FILE_EXT
                    || fileExt == Iec61499ModelFactory.SYS_FILE_EXT
                    || fileExt == Iec61499ModelFactory.SEG_FILE_EXT
        }

        private fun loadEntries(rootDirectory: File): Sequence<File> = sequence {
            val files = rootDirectory.listFiles() ?: return@sequence
            for (file in files) {
                if (file.isDirectory) {
                    for (nestedFile in file.listFiles()!!) { // unexpected format if exception occurs
                        if (supportedFileExtension(nestedFile.extension)) {
                            yield(nestedFile)
                        }
                    }
                }
            }
        }

        private fun handleSelectedFolderPath(folderPath: String, e: AnActionEvent) {
//            TODO: copy all files

            // Suppose we've already copied all files, now
            // we have to parse them

            val mpsProject: MPSProject = e.getData(MPSCommonDataKeys.MPS_PROJECT)!!
            mpsProject.modelAccess.runWriteAction {
                // create a variable called moduleName and assign to it the name of directory specified by folderPath
                val moduleName = File(folderPath).name

                val moduleDir = mpsProject.project.basePath + "/solutions/" + moduleName
                val solution = NewModuleUtil.createSolution(moduleName, moduleDir, mpsProject)
                val root = solution.modelRoots.iterator().next() as DefaultModelRoot
                val model = try {
                    root.createModel(SModelName("Library@content"), null,
                        Iec61499ModelFactory.DST,
                        Iec61499ModelFactory.TYPE
                    )
                } catch (e: ModelCannotBeCreatedException) {
                    throw RuntimeException("Model can not be created", e)
                }
                val repository = PlatformRepositoryProvider.getInstance(mpsProject)
                val initialElement = initModel(mpsProject.project, repository, model, moduleName, folderPath)
                model.module.declaredDependencies
                val initialNode = initialElement.node
                mpsProject.repository.modelAccess.runReadInEDT {
                    val navigationSupport = NavigationSupport.getInstance()
                    navigationSupport.openNode(mpsProject, initialNode, true, false)
                    navigationSupport.selectInTree(mpsProject, initialNode, false)
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

            override fun createCenterPanel(): JComponent {
                return panel
            }
        }

        if (dialogWrapper.showAndGet()) {
            val filePath = textFieldWithBrowseButton.text
            handleSelectedFolderPath(filePath, e)
        }
    }

}
