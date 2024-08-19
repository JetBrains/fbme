package org.fbme.integration.nxt.exporter

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
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
import org.jdom.output.Format
import org.jdom.output.XMLOutputter
import org.jetbrains.mps.openapi.model.SNode
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Paths


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
            1.1 Find out what type of data comes with what type of fbdt. TODO, even amongst BasicFBTypes, some may have GUIDs while others don't.
        2. Convert all nodes of type fbTypeDeclaration into a document (org.jdom.Element).
            2.1 Convert BasicFBTypeDeclaration types and "stitch them up" using the collected auxiliary data. TODO, only hardcoding atm.
            2.2 Convert SIFB, FBNetwork, Adapter types. TODO
        3. Write the documents in a new directory (MPSProjectNxtExports) maintaining the original structure. PRETTY MUCH DONE
            3.1 Get relative location of all the converted fbs (.fbt files) in their original directory.
            3.2 Create all the new directories if they don't exist.
        */

        val projectMPS = event.getData(MPSDataKeys.MPS_PROJECT) ?: return
        val project = event.project ?: return
        val model = event.getData(MPSDataKeys.CONTEXT_MODEL) ?: return
        val modelAccess = model.repository.modelAccess
        val platformRepository = PlatformRepositoryProvider.getInstance(projectMPS)

        val fbTypeDeclarationDocumentList = mutableListOf<Document>()
        val adapterTypeDeclarationDocumentList = mutableListOf<Document>()

        // Sort all declarations into lists with the common file extension.
        // TODO: Complete RootDeclarationNxtPrinter.
        modelAccess.runReadAction {
            val rootNodes = model.rootNodes
            for (rootNode in rootNodes) {
                //if (rootNode.name == "System") { continue }
                val declaration = convertRootNode(platformRepository, rootNode, 8) ?: continue
                val declarationDocument = RootDeclarationNxtPrinter(declaration as Declaration).print()
                when (declaration) {
                    is FBTypeDeclaration -> fbTypeDeclarationDocumentList.add(declarationDocument)
                    is AdapterTypeDeclaration -> adapterTypeDeclarationDocumentList.add(declarationDocument)
                    // end with .sys?
                }
            }
        }

        //val document = BasicFBTypePrinter(node).print()
        val fileDataSource = model.source as RecursiveFolderDataSource
        val virtualFileManager = VirtualFileManager.getInstance()
        val projectBasePath = project.basePath ?: return //fileDataSource.rootFolder.path
        val projectRootPath = fileDataSource.rootFolder.path
        val projectBaseDir: VirtualFile = virtualFileManager.findFileByUrl("file://$projectBasePath") ?: return
        val projectBaseDirUp2: VirtualFile = projectBaseDir.parent?.parent ?: return
        val projectBaseDirUp2Str: String = projectBaseDirUp2.toString().removePrefix("file://")
        val exportBasePath = Paths.get(projectBaseDirUp2Str, "MPSProjectNxtExports", project.name, "IEC61499")
        val exportBasePathStr = exportBasePath.toString()
        val xmlOutputter = XMLOutputter(Format.getPrettyFormat())
        Files.createDirectories(exportBasePath)

        fun writeDocuments(documentList: List<Document>, fileExtension: String): Boolean {

            for (document in documentList) {

                val declarationName = document.rootElement.getAttribute("Name").value
                val declarationFileName = StringBuilder(declarationName).append(".").append(fileExtension).toString()
                val declarationFullFilePath = filePathSearcherRecursive(projectBaseDir, declarationFileName)
                val declarationSubFolder = declarationFullFilePath.removePrefix(projectRootPath).removeSuffix(declarationFileName).trim('/') // Is it applicable in all every context (Windows vs. Linux)?

                val exportPath = if (declarationSubFolder == "") {
                    Paths.get(exportBasePathStr, declarationFileName)
                } else {
                    Paths.get(exportBasePathStr, declarationSubFolder, declarationFileName)
                }
                val exportPathStr = exportPath.toString()

                try {
                    if (Files.notExists(exportPath.parent)) { Files.createDirectories(exportPath.parent) }
                    xmlOutputter.output(document, File(exportPathStr).writer()) // TODO: close these writers somehow...
                    //File(exportPathStr).writer().close()
                } catch (e: IOException) {
                    Messages.showMessageDialog(
                        project,
                        "An error occurred during export: ${e.message}",
                        "ExportNxt",
                        Messages.getErrorIcon()
                    )
                    return false
                }
            }

            return true
        }

        if (!writeDocuments(fbTypeDeclarationDocumentList, Iec61499ModelFactory.Companion.FBT_FILE_EXT)) { return }

        if (!writeDocuments(adapterTypeDeclarationDocumentList, Iec61499ModelFactory.Companion.ADP_FILE_EXT)) { return }

        Messages.showMessageDialog(
            project,
            "Export successful: $exportBasePathStr \n\n" +
                    "" ,
            "ExportNxt",
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

    private fun convertRootNode(platformRepository: PlatformRepository, node: SNode, attemptsLeft: Int): Any? {
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

}

/*        for (fbTypeDeclarationDocument in fbTypeDeclarationDocumentList) {

            val fbTypeDeclarationName = fbTypeDeclarationDocument.rootElement.getAttribute("Name").value
            val fbTypeDeclarationFileName = StringBuilder(fbTypeDeclarationName).append(".").append(Iec61499ModelFactory.Companion.FBT_FILE_EXT).toString()
            val fbTypeDeclarationFullFilePath = filePathSearcherRecursive(projectBaseDir, fbTypeDeclarationFileName)
            val fbTypeDeclarationSubFolder = fbTypeDeclarationFullFilePath.removePrefix(projectRootPath).removeSuffix(fbTypeDeclarationFileName).trim('/') // Is it applicable in all every context (Windows vs. Linux)?

            val exportPath = if (fbTypeDeclarationSubFolder == "") {
                Paths.get(exportBasePathStr, fbTypeDeclarationFileName)
            } else {
                Paths.get(exportBasePathStr, fbTypeDeclarationSubFolder, fbTypeDeclarationFileName)
            }
            val exportPathStr = exportPath.toString()

            try {
                if (Files.notExists(exportPath.parent)) { Files.createDirectories(exportPath.parent) }
                xmlOutputter.output(fbTypeDeclarationDocument, File(exportPathStr).writer()) // TODO: close these writers somehow...
                //File(exportPathStr).writer().close()
            } catch (e: IOException) {
                Messages.showMessageDialog(
                    project,
                    "An error occurred during export: ${e.message}",
                    "ExportNxt",
                    Messages.getErrorIcon()
                )
                return
            }
        }*/
