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
import org.xml.sax.InputSource
import java.io.File
import java.io.IOException
import java.io.StringReader
import java.nio.file.Files
import java.nio.file.Paths
import javax.xml.parsers.DocumentBuilderFactory

class ExportAction: AnAction() { //}, DumbAware {

    override fun actionPerformed(event: AnActionEvent) {

        /* useless keys
        * event.getData(MPSDataKeys.NODE)
        * event.getData(MPSDataKeys.MODEL)
        * event.getData(MPSDataKeys.SOURCE_NODE)
        * event.getData(MPSDataKeys.NODES)
        * event.getData(MPSDataKeys.MODELS) ?
        * */

        /*
        1. Extract auxiliary data of the function blocks while importing the Nxt project (GUIDs, VersionInfo, Bezierpoints for ECTransitions...)
            1.1 Find out what type of data comes with what type of fbdt.
        2. Convert all nodes of type fbTypeDeclaration into a document (org.jdom.Element).
            2.1 Convert BasicFBTypeDeclaration types and "stitch them up" using the collected auxiliary data.
            2.2 Convert SIFB, FBNetwork, Adapter types. TODO
        3. Write the documents in a new directory (MPSProjectNxtExports) maintaining the original structure.
            3.1 Get relative location of all the converted fbs (.fbt files) in their original directory.
            3.2 Create all the new directories if they don't exist.
        4. "Visibly" export all files that haven't been imported from Ecostruxure.
            4.1 Any fbme-original files get written to the export directory, but they don't show up in Ecostruxure menu. (IEC61499.dfbproj) TODO
        */

        val projectMPS = event.getData(MPSDataKeys.MPS_PROJECT) ?: return
        val platformRepository = PlatformRepositoryProvider.getInstance(projectMPS)
        val model = event.getData(MPSDataKeys.CONTEXT_MODEL) ?: return
        val modelAccess = model.repository.modelAccess
        val project = event.project ?: return

        val basicFBTypeDeclarationList = mutableListOf<BasicFBTypeDeclaration>()
        val compositeFBTypeDeclarationList = mutableListOf<CompositeFBTypeDeclaration>()
        val serviceInterfaceFBTypeDeclaration = mutableListOf<ServiceInterfaceFBTypeDeclaration>()
        val adapterTypeDeclarationList = mutableListOf<Declaration>()
        val systemDeclarationList = mutableListOf<Declaration>()

        // Sort all declarations into lists with the common file extension.
        // TODO: Complete RootDeclarationNxtPrinter.
        modelAccess.runReadAction {
            val rootNodes = model.rootNodes
            for (rootNode in rootNodes) {
                //if (rootNode.name == "System") { continue }
                val node = convertRootNode(platformRepository, rootNode) ?: continue
                val declaration = node as Declaration
                //val declarationDocument = RootDeclarationEcoPrinter(declaration).print()
                when (declaration) {
                    is BasicFBTypeDeclaration -> basicFBTypeDeclarationList.add(declaration)
                    is CompositeFBTypeDeclaration -> compositeFBTypeDeclarationList.add(declaration)
                    is ServiceInterfaceFBTypeDeclaration -> serviceInterfaceFBTypeDeclaration.add(declaration)
                    is AdapterTypeDeclaration -> adapterTypeDeclarationList.add(declaration)
                    is SystemDeclaration -> systemDeclarationList.add(declaration)
                    else -> Messages.showMessageDialog(
                        event.project,
                        "Sus activity detected! \n" +
                                "${rootNode.name}" ,
                        "ExportEcostruxure",
                        Messages.getInformationIcon()
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

        var projectRootPath: String
        var projectBaseDir: VirtualFile
        var exportBasePathStr: String

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
                Messages.showMessageDialog(event.project, "No directory selected.", "Export Failed", Messages.getErrorIcon())
                return
            }
            val projectBaseDirStr: String = projectBaseDir.toString().removePrefix("file://")
            val exportBasePath = Paths.get(projectBaseDirStr, "IEC61499")
            exportBasePathStr = exportBasePath.toString()
            //Files.createDirectories(exportBasePath) // Should exist by default.
            Messages.showMessageDialog(project,
                "Selected Directory: $projectBaseDirStr",
                "Directory Selected", Messages.getInformationIcon()
            )
            projectRootPath = exportBasePathStr.replace("\\", "/").replace("""\""", "/")
        }

        val xmlOutputter = XMLOutputter(Format.getPrettyFormat())

        fun writeDocuments(declarationList: List<Declaration>, fileExtension: String, update: Boolean = false): Boolean {

            for (declaration in declarationList) {

                val document = RootDeclarationEcoPrinter(declaration).print()
                val declarationName = document.rootElement.getAttribute("Name").value
                val declarationFileName = StringBuilder(declarationName).append(".").append(fileExtension).toString()
                val declarationFullFilePath = filePathSearcherRecursive(projectBaseDir, declarationFileName)
                val declarationSubFolder = declarationFullFilePath.removePrefix(projectRootPath).removeSuffix(declarationFileName).trim('/') // Is it applicable in every context (Windows vs. Linux)?

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
                        "An error occurred during export: ${e.message}",
                        "ExportEcostruxure",
                        Messages.getErrorIcon()
                    )
                    return false
                }
            }


            if (!useTestDirectory and update) {
                // Lastly, IEC61499.dfbproj file may need to be updated.
                updateProjectFile(declarationList, projectRootPath)
            }

            return true
        }

        modelAccess.runReadAction {
            if (!writeDocuments(basicFBTypeDeclarationList, Iec61499ModelFactory.Companion.FBT_FILE_EXT, update = false)) {
                return@runReadAction
            }
            if (!writeDocuments(compositeFBTypeDeclarationList, Iec61499ModelFactory.Companion.FBT_FILE_EXT)) { return@runReadAction }
            if (!writeDocuments(serviceInterfaceFBTypeDeclaration, Iec61499ModelFactory.Companion.FBT_FILE_EXT)) { return@runReadAction }
            if (!writeDocuments(adapterTypeDeclarationList, Iec61499ModelFactory.Companion.ADP_FILE_EXT)) { return@runReadAction }
            if (!writeDocuments(systemDeclarationList, Iec61499ModelFactory.Companion.SYS_FILE_EXT)) { return@runReadAction }
        }



        Messages.showMessageDialog(
            project,
            "Export successful: $exportBasePathStr \n\n" +
                    "" ,
            "ExportEcostruxure",
            Messages.getInformationIcon()
        )

    }

    private fun filePathSearcherRecursive(dir: VirtualFile, fileName: String) : String {
        dir.children.forEach { subDir ->
            val result = filePathSearcherRecursive(subDir, fileName)
            if (result != "") { return result }
        }
        return if (dir.name != fileName) {
            ""
        } else {
            dir.path
        }
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

    private fun updateProjectFile(declarationList : List<Declaration>, projectFilePath : String) {
        // Should PropertyGroup / <Platform Condition=" '$(Platform)' == '' ">Windows</Platform> be checked for platform?
        // If not Windows platform, then should I use a different separator for files?

        // Find "IEC61499.dfbproj" first.
        val projectFileName = "IEC61499.dfbproj"
        val fileToUpdatePathStr = Paths.get(projectFilePath, projectFileName).toString()
        val fileToUpdate = File(fileToUpdatePathStr)
        val saxBuilder = SAXBuilder()

        // Create an org.jdom.Document from "IEC61499.dfbproj".
        val document = try {
            saxBuilder.build(fileToUpdate)
        } catch (e: Exception) {
            TODO("Display a fitting error message.")
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

        val compileElements = itemGroupElement.getChildren("Compile")
        val compileElementsPlaceholder = mutableListOf<Element>()

        // Add any missing compileElements to the document.
        for (declaration in declarationList) {
            val declarationName = declaration.name
            val fileName = "$declarationName.fbt" // TODO(Expand to other types.)
            val matchingCompileElement = compileElements.find {
                val includeValue = it.getAttributeValue("Include")
                includeValue == fileName
            }
            if (matchingCompileElement != null) {
                continue
            }

            // Make a new Compile element and place it under ItemGroup.
            val newCompileElement = Element("Compile")
            newCompileElement.setAttribute("Include", fileName)
            val iec61499TypeElement = Element("IEC61499Type")
            iec61499TypeElement.setText("Basic")
            newCompileElement.removeAttribute("xmlns")
            newCompileElement.setContent(iec61499TypeElement)
            compileElementsPlaceholder.add(newCompileElement)
        }

        itemGroupElement.addContent(compileElementsPlaceholder)
        val xmlOutputter = XMLOutputter(Format.getPrettyFormat())

        // Rewrite "IEC61499.dfbproj" with the help of document.
        File(fileToUpdatePathStr).writer().use { writer ->
            xmlOutputter.output(document, writer)
        }
    }
}