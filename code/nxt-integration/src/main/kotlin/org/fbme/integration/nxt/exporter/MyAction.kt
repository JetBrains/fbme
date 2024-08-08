package org.fbme.integration.nxt.exporter

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.extapi.persistence.FileDataSource
import org.fbme.ide.platform.persistence.RecursiveFolderDataSource
import jetbrains.mps.workbench.MPSDataKeys
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.stringify.BasicFBTypePrinter
import jetbrains.mps.vfs.IFile
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.openapi.vfs.VirtualFileManager
import jetbrains.mps.smodel.ModelAccess
import org.jetbrains.mps.openapi.module.SRepository
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Paths
import javax.xml.transform.OutputKeys
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult


class MyAction: AnAction() {

    override fun actionPerformed(event: AnActionEvent) {

        //val projectMPS = event.getData(MPSDataKeys.MPS_PROJECT) ?: return
        val project = event.project ?: return
        val model = event.getData(MPSDataKeys.CONTEXT_MODEL) ?: return
        val modelAccess = model.repository.modelAccess
        //val node = event.element<BasicFBTypeDeclaration>() //null
        //val document = BasicFBTypePrinter(node).print()

        var nodeName : String? = ""

        modelAccess.runReadAction {
            val nodes = model.rootNodes
            nodes.forEach { rootNode ->
                // Only one gets saved
                nodeName = rootNode.name
            }
        }

        if (nodeName == null) {
            Messages.showMessageDialog(
                project,
                "Export not successful",
                "ExportNxt",
                Messages.getInformationIcon()
            )
        } else {
            Messages.showMessageDialog(
                project,
                "Export successful: ${nodeName}",
                "ExportNxt",
                Messages.getInformationIcon()
            )
        }

        /* useless keys
        * event.getData(MPSDataKeys.NODE)
        * event.getData(MPSDataKeys.MODEL)
        * event.getData(MPSDataKeys.SOURCE_NODE)
        * event.getData(MPSDataKeys.NODES)
        * event.getData(MPSDataKeys.MODELS) ?
        * */

        //val document = BasicFBTypePrinter(node).print()
        val fileDataSource = model.source as RecursiveFolderDataSource
        val myIFile = fileDataSource.rootFolder

        val virtualFileManager = VirtualFileManager.getInstance()
        val projectBasePath = project.basePath
        val projectBaseDir: VirtualFile? = virtualFileManager.findFileByUrl("file://$projectBasePath")
        val exportBaseDir: VirtualFile? = projectBaseDir?.parent?.parent
        val exportBasePathStr: String = exportBaseDir.toString().removePrefix("file://")
        //val exportBasePath = Paths.get(exportBasePathStr, "MPSProjectNxtExports")
        val exportPath = Paths.get(exportBasePathStr, "MPSProjectNxtExports", "exported_file.txt")
        val exportPathStr = exportPath.toString()// = "${project.basePath}/exported_file.txt"

        var myData : String = ""
        modelAccess.runReadAction {
            myData = myIFile.name
        }

        try {
            Files.createDirectories(exportPath.parent)
            val writer = Files.newBufferedWriter(exportPath)
            writer.write("Exported data")
            writer.newLine()
            writer.write(myData)
            writer.close()

            Messages.showMessageDialog(
                project,
                "Export successful: $exportPathStr",
                "ExportNxt",
                Messages.getInformationIcon()
            )
        } catch (e: IOException) {
            Messages.showMessageDialog(
                project,
                "An error occurred during export: ${e.message}, ${exportPathStr}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
        }
    }
}
