package org.fbme.integration.nxt.exporter

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.fileChooser.FileChooser
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory
import org.fbme.ide.platform.persistence.RecursiveFolderDataSource
import jetbrains.mps.workbench.MPSDataKeys
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.openapi.vfs.VirtualFileManager
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.persistence.Iec61499ModelFactory
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.jdom.Document
import org.jdom.Element
import org.jdom.input.SAXBuilder
import org.jdom.output.Format
import org.jdom.output.XMLOutputter
import org.jetbrains.mps.openapi.model.SNode
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Paths

class ExportAction: AnAction() { //}, DumbAware {

    override fun actionPerformed(event: AnActionEvent) {

        /* How exporting to EcoStruxure works:

        1) Iterate through all the root nodes of the project and add them to their corresponding lists. Only the
        following items are considered: basic FBs, composite FB, SIFBs, adapters and system files.

        2) Determine the export directory, the user can either select the test directory "MPSProjectEcostruxureExports",
        or browse for a suitable EAE solution that will then be partially overwritten.

        3) For each list of a certain type of item, call writeDocuments(), a nested function within this function. First,
        call RootDeclarationEcoPrinter to turn each declaration into a org.jdom.Document object.

        4) writeDocuments() will determine the correct file path for each declaration according to the export path,
        declaration name, file extension and possible subfolder. With the absolute path, use XMLOutputter print the
        document in the destination.

        5) Still within writeDocuments(), call updateProjectFile for each item if not writing to the test directory. This
        will update the "IEC61499.dfbproj" file for each FBME-original item. Without doing this, any new items will not
        become visible in the EAE visual editor, but can only be found with the file explorer.
        */

        val projectMPS = event.getData(MPSDataKeys.MPS_PROJECT) ?: return
        val platformRepository = PlatformRepositoryProvider.getInstance(projectMPS)
        val model = event.getData(MPSDataKeys.CONTEXT_MODEL) ?: return
        val modelAccess = model.repository.modelAccess
        val project = event.project ?: return

        val basicFBTypeDeclarationList = mutableListOf<BasicFBTypeDeclaration>()
        val compositeFBTypeDeclarationList = mutableListOf<CompositeFBTypeDeclaration>()
        val serviceInterfaceFBTypeDeclaration = mutableListOf<ServiceInterfaceFBTypeDeclaration>()
        val adapterTypeDeclarationList = mutableListOf<AdapterTypeDeclaration>()
        val systemDeclarationList = mutableListOf<SystemDeclaration>()

        // Sort all declarations into lists with the common file extension.
        modelAccess.runReadAction {
            val rootNodes = model.rootNodes
            for (rootNode in rootNodes) {
                val node = convertRootNode(platformRepository, rootNode) ?: continue
                when (val declaration = node as Declaration) {
                    is BasicFBTypeDeclaration -> basicFBTypeDeclarationList.add(declaration as BasicFBTypeDeclaration)
                    is CompositeFBTypeDeclaration -> compositeFBTypeDeclarationList.add(declaration as CompositeFBTypeDeclaration)
                    is ServiceInterfaceFBTypeDeclaration -> serviceInterfaceFBTypeDeclaration.add(declaration as ServiceInterfaceFBTypeDeclaration)
                    is AdapterTypeDeclaration -> adapterTypeDeclarationList.add(declaration as AdapterTypeDeclaration)
                    is SystemDeclaration -> systemDeclarationList.add(declaration as SystemDeclaration)
                    else -> Messages.showMessageDialog(
                        event.project,
                        "Unknown IEC 61499 artifact encountered: ${rootNode.name} \n" +
                                "This item will not be exported to EcoStruxure.",
                        "ExportEcostruxure",
                        Messages.getWarningIcon()
                    )
                }
            }
        }

        val useTestDirectory = Messages.showYesNoDialog(
            project,
            "Do you want to export the project to the test directory ../MPSProjectEcostruxureExports/${project.name}?\n\n" +
                    "Only files in the IEC61499 folder will be written, therefore no valid project will be created.",
            "Export Directory",
            Messages.getQuestionIcon()
        ) == Messages.YES

        val projectRootPath: String
        val projectBaseDir: VirtualFile
        val exportBasePathStr: String

        if (useTestDirectory) {
            // Create and/or expand the test directory.
            val fileDataSource = model.source as RecursiveFolderDataSource
            val virtualFileManager = VirtualFileManager.getInstance()
            val projectBasePath = project.basePath ?: return //fileDataSource.rootFolder.path
            projectRootPath = fileDataSource.rootFolder.path
            projectBaseDir = virtualFileManager.findFileByUrl("file://$projectBasePath") ?: return
            val projectBaseDirUp2: VirtualFile = projectBaseDir.parent?.parent ?: return
            val projectBaseDirUp2Str: String = projectBaseDirUp2.toString().removePrefix("file://")
            val exportBasePath = Paths.get(projectBaseDirUp2Str, "MPSProjectEcostruxureExports", project.name, "IEC61499")
            exportBasePathStr = exportBasePath.toString()
            Files.createDirectories(exportBasePath)
        } else {
            val descriptor = FileChooserDescriptorFactory.createSingleFolderDescriptor()
            descriptor.title = "Select Export Directory"
            descriptor.description = "Specify the root folder of the Ecostruxure solution. Files in the IEC61499 folder will be overwritten."
            projectBaseDir = FileChooser.chooseFile(descriptor, project, null) ?: run {
                Messages.showMessageDialog(event.project, "No directory selected.", "Export Aborted", Messages.getErrorIcon())
                return
            }
            val projectBaseDirStr: String = projectBaseDir.toString().removePrefix("file://")
            val exportBasePath = Paths.get(projectBaseDirStr, "IEC61499")
            exportBasePathStr = exportBasePath.toString()
            //Files.createDirectories(exportBasePath) // Should exist by default.
            Messages.showMessageDialog(project,
                "Selected directory $projectBaseDirStr",
                "Directory Specified", Messages.getInformationIcon()
            )
            projectRootPath = exportBasePathStr.replace("\\", "/").replace("""\""", "/")
        }

        val xmlOutputter = XMLOutputter(Format.getPrettyFormat())

        fun writeDocuments(declarationList: List<Declaration>, update: Boolean = true): Boolean {

            if (declarationList.isEmpty()) return true

            val fileExtension = when (declarationList[0]) {
                is FBTypeDeclaration -> Iec61499ModelFactory.Companion.FBT_FILE_EXT
                is AdapterTypeDeclaration -> Iec61499ModelFactory.Companion.ADP_FILE_EXT
                is SystemDeclaration -> Iec61499ModelFactory.Companion.SYS_FILE_EXT
                else -> {
                    // TODO("Expand to other types if necessary.")
                    Messages.showMessageDialog(
                        project,
                        "Declaration of unknown type encountered: ${declarationList[0].name}\n" +
                                "This item will not be exported to EcoStruxure.",
                        "ExportEcostruxure",
                        Messages.getWarningIcon()
                    )
                    return false
                }
            }

            fun isDeployFile(systemDocument: Document) : Boolean {
                // There are two System.sys files in the FBME root directory,
                // one in bin/Deploy/System/ and another in System/.
                val rootElement = systemDocument.rootElement
                val applicationElements = rootElement.getChildren("Application")
                return applicationElements.isEmpty() // Deploy file has no Applications.
            }

            val declarationSubFolderList  = mutableListOf<String>()

            for (declaration in declarationList) {

                val document = RootDeclarationEcoPrinter(declaration).print()
                val declarationName = document.rootElement.getAttributeValue("Name")
                val declarationFileName = "$declarationName.$fileExtension"

                val declarationFullFilePath = if (fileExtension != Iec61499ModelFactory.Companion.SYS_FILE_EXT) {
                    filePathSearcherRecursive(projectBaseDir, declarationFileName)
                } else if (isDeployFile(document)) {
                    // "${projectRootPath}bin/Deploy/System/${declarationFileName}"
                    // TODO("Figure out if the file System.deploy.sys is needed or not.")
                    continue
                } else {
                    "${projectRootPath}System/${declarationFileName}"
                }

                val declarationSubFolder = declarationFullFilePath.removePrefix(projectRootPath).
                    removeSuffix(declarationFileName).trim('/') // Is this applicable in every context (Windows vs. General case)?
                declarationSubFolderList.add(declarationSubFolder)

                val exportPath = if (declarationSubFolder == "") {
                    Paths.get(exportBasePathStr, declarationFileName)
                } else {
                    Paths.get(exportBasePathStr, declarationSubFolder, declarationFileName)
                }
                val exportPathStr = exportPath.toString()

                try {
                    if (Files.notExists(exportPath.parent)) {
                        Files.createDirectories(exportPath.parent)
                    }
                    File(exportPathStr).writer().use { writer ->
                        xmlOutputter.output(document, writer)
                    }
                } catch (e: IOException) {
                    Messages.showMessageDialog(
                        project,
                        "An IOException was encountered, unable to write file ${declarationSubFolder}/$declarationFileName: ${e.message}",
                        "ExportEcostruxure",
                        Messages.getErrorIcon()
                    )
                    return false
                }
            }

            if (useTestDirectory || !update) return true

            // Lastly, IEC61499.dfbproj file may need to be updated.
            updateProjectFile(declarationList, declarationSubFolderList, projectRootPath)

            return true
        }

        var filesWrittenSuccessfully = true

        modelAccess.runReadAction {
            if (!writeDocuments(basicFBTypeDeclarationList)) {
                filesWrittenSuccessfully = false
                return@runReadAction
            }
            if (!writeDocuments(compositeFBTypeDeclarationList)) {
                filesWrittenSuccessfully = false
                return@runReadAction
            }
            if (!writeDocuments(serviceInterfaceFBTypeDeclaration, update = false)) {
                // update = false, because self-made SIFBs shouldn't exist.
                filesWrittenSuccessfully = false
                return@runReadAction
            }
            if (!writeDocuments(adapterTypeDeclarationList)) {
                filesWrittenSuccessfully = false
                return@runReadAction
            }
            if (!writeDocuments(systemDeclarationList, update = false)) {
                filesWrittenSuccessfully = false
                return@runReadAction
            }
        }

        if (filesWrittenSuccessfully) {
            Messages.showMessageDialog(
                project,
                "Export successful: $exportBasePathStr \n\n" +
                        "" ,
                "ExportEcostruxure",
                Messages.getInformationIcon()
            )
        } else {
            Messages.showMessageDialog(
                project,
                "Export failed: $exportBasePathStr \n\n" +
                        "" ,
                "ExportEcostruxure",
                Messages.getErrorIcon()
            )
        }
    }

    private fun filePathSearcherRecursive(dir: VirtualFile,
                                          fileName: String,
                                          binSearched: Boolean = false) : String {
        if (binSearched && dir.name == "bin") return ""
        if (dir.name == fileName) return dir.path
        dir.children.forEach { subDir ->
            val result = filePathSearcherRecursive(subDir, fileName, binSearched)
            if (result.isNotEmpty()) return result
        }
        return ""
    }

    private fun convertRootNode(platformRepository: PlatformRepository, node: SNode, attemptsLeft: Int = 8): Any? {
        // Takes a root node of the model and returns a declaration if it fits any of the 8 declaration classes.
        return try {
            when (attemptsLeft) {
                8 -> platformRepository.adapter<AdapterTypeDeclaration>(node)
                7 -> platformRepository.adapter<BasicFBTypeDeclaration>(node)
                6 -> platformRepository.adapter<CompositeFBTypeDeclaration>(node)
                5 -> platformRepository.adapter<DeviceTypeDeclaration>(node)
                4 -> platformRepository.adapter<ResourceTypeDeclaration>(node)
                3 -> platformRepository.adapter<ServiceInterfaceFBTypeDeclaration>(node)
                2 -> platformRepository.adapter<SubapplicationTypeDeclaration>(node)
                else -> platformRepository.adapter<SystemDeclaration>(node)
            }
        } catch (e: java.lang.ClassCastException) {
            if (attemptsLeft == 1) {
                // None of the attempts worked, return null.
                null
            } else {
                convertRootNode(platformRepository, node, attemptsLeft - 1)
            }
        }
    }

    private fun updateProjectFile(declarationList : List<Declaration>,
                                  declarationSubFolderList : List<String>,
                                  projectFilePath : String) { // Add boolean return value.
        // Find "IEC61499.dfbproj" first.
        val projectFileName = "IEC61499.dfbproj"
        val fileToUpdatePathStr = Paths.get(projectFilePath, projectFileName).toString()
        val fileToUpdate = File(fileToUpdatePathStr)
        val saxBuilder = SAXBuilder()

        // Create an org.jdom.Document from "IEC61499.dfbproj".
        val document = try {
            saxBuilder.build(fileToUpdate)
        } catch (e: Exception) {
            Messages.showMessageDialog(
                "Unable to read file IEC61499.dfbproj, any FBME-original files will not be will not become " +
                        "visible in the EcoStruxure editor.\n" +
                        "You may try closing EcoStruxure to solve this.",
                "ExportEcostruxure",
                Messages.getWarningIcon()
            )
            return
        }

        val root = document.rootElement
        val namespace = root.namespace
        val itemGroupElements = root.getChildren("ItemGroup", namespace) ?: return
        val itemGroupElement = itemGroupElements[0]

        if (itemGroupElement.children.isNotEmpty()) {
            val firstChild = itemGroupElement.children[0]
            // There should be multiple ItemGroups, check that this isn't the wrong one.
            if (firstChild.name in setOf("Folder", "Content", "Reference")) return
        }

        val propertyGroupElement = root.getChildren("PropertyGroup", namespace)[0]
        val platformElement = propertyGroupElement.getChild("Platform", namespace)
        val pathNotationWindows = '\\'
        val pathNotationGeneral = '/'
        val pathNotation = if (platformElement.text == "Windows") {
            pathNotationWindows
        } else {
            pathNotationGeneral
        }

        val compileElements = itemGroupElement.getChildren("Compile", namespace)
        val compileElementsPlaceholder = mutableListOf<Element>()

        // Add any missing compileElements to the document.
        for ((declaration, declarationSubFolder) in declarationList.zip(declarationSubFolderList)) {
            val declarationName = declaration.name
            val (fileExtension, descriptor) = when (declaration) {
                is BasicFBTypeDeclaration -> Pair(Iec61499ModelFactory.Companion.FBT_FILE_EXT, "Basic")
                is CompositeFBTypeDeclaration -> Pair(Iec61499ModelFactory.Companion.FBT_FILE_EXT, "Composite")
                is AdapterTypeDeclaration -> Pair(Iec61499ModelFactory.Companion.ADP_FILE_EXT, "Adapter")
                else -> {
                    // TODO("Expand to other types if necessary.")
                    // This should be taken care of in writeDocuments(), but check the item type here too to be sure.
                    Messages.showMessageDialog(
                        "Declaration of unknown type encountered while updating file $projectFileName \n" +
                                "${declaration.name} will not become visible in the EcoStruxure editor.",
                        "ExportEcostruxure",
                        Messages.getWarningIcon()
                    )
                    return
                }
            }

            val fileName = if (declarationSubFolder == "") {
                "$declarationName.$fileExtension"
            } else if (pathNotation == pathNotationWindows) {
                // declarationSubFolder may contain some general path notations.
                "${declarationSubFolder.replace(pathNotationGeneral, pathNotationWindows)}$pathNotation$declarationName.$fileExtension"
            } else {
                "$declarationSubFolder$pathNotation$declarationName.$fileExtension"
            }
            val matchingCompileElement = compileElements.find {
                val includeValue = it.getAttributeValue("Include")
                includeValue == fileName
            }

            if (matchingCompileElement != null) continue

            // Make a new Compile element and add it to ItemGroup.
            val newCompileElement = Element("Compile", namespace)
            newCompileElement.setAttribute("Include", fileName)
            val iec61499TypeElement = Element("IEC61499Type", namespace)
            iec61499TypeElement.setText(descriptor) // Basic, Composite, Adapter...
            newCompileElement.setContent(iec61499TypeElement)
            compileElementsPlaceholder.add(newCompileElement)
        }

        if (compileElementsPlaceholder.isEmpty()) return
        itemGroupElement.addContent(compileElementsPlaceholder)
        val xmlOutputter = XMLOutputter(Format.getPrettyFormat())

        // Rewrite "IEC61499.dfbproj" with the help of document.
        // TODO("Add try - catch blocks here.")
        File(fileToUpdatePathStr).writer().use { writer ->
            xmlOutputter.output(document, writer)
        }
    }
}