package org.fbme.integration.nxt.exporter

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.openapi.vfs.VirtualFileManager
import org.xml.sax.InputSource
import java.io.File
import java.io.IOException
import java.io.StringReader
import javax.xml.parsers.DocumentBuilderFactory
import org.w3c.dom.Document
import org.xml.sax.SAXException
import java.nio.file.Files
import java.nio.file.Paths
import javax.xml.transform.OutputKeys
import javax.xml.transform.TransformerException
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult

class ExportAction : AnAction(), DumbAware {
    override fun actionPerformed(event: AnActionEvent) {

        val project: Project = event.project ?: return
        val projectBasePath = project.basePath

        if (projectBasePath == null) {
            Messages.showMessageDialog(
                project,
                "Project base path is null",
                "ExportNxt",
                Messages.getErrorIcon()
            )
            return
        }

        // Search for each file with the given suffix.
        fun recursiveFileSearcher(dir: VirtualFile?, projectFilePaths: MutableList<String>, fileSuffix: String = ".fbt") {
            dir?.let { dirNow ->
                dirNow.children.forEach { file ->
                    if (file.children.isEmpty()) {
                        // We have found a file, checks if it ends with 'fileSuffix'.
                        if (file.name.endsWith(fileSuffix)) {
                            projectFilePaths.add(file.path)
                        }
                    } else {
                        recursiveFileSearcher(file, projectFilePaths, fileSuffix)
                    }
                }
            }
        }

        val virtualFileManager = VirtualFileManager.getInstance()
        val projectBaseDir: VirtualFile? = virtualFileManager.findFileByUrl("file://$projectBasePath")
        val projectFilePaths = mutableListOf<String>()
        recursiveFileSearcher(projectBaseDir, projectFilePaths) // Search for any .fbt files

        val exportBaseDir: VirtualFile? = projectBaseDir?.parent?.parent // .../MPSProjectExports
        val exportBasePath: String = exportBaseDir.toString()

        projectFilePaths.forEach { projectFilePath ->
            if (!exportFile(projectFilePath, exportBasePath, project)) {
                return
            }
        }

        Messages.showMessageDialog(
            project,
            "Export successful: $projectBasePath",
            "ExportNxt",
            Messages.getInformationIcon()
        )

    }

    private fun exportFile(pathToFbtFile: String, exportBasePath: String, project: Project): Boolean {

        val dbFactory = DocumentBuilderFactory.newInstance()
        val dBuilder = dbFactory.newDocumentBuilder()
        val fbtFile = File(pathToFbtFile)
        val originalXmlContent = fbtFile.readText()
        val xmlInput = InputSource(StringReader(originalXmlContent))
        val doc : Document // Maybe need a '!' at the end.

        try {
            doc = dBuilder.parse(xmlInput)
        } catch (e: IOException) {
            Messages.showMessageDialog(
                project,
                "An error occurred while opening a project file: ${e.message}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
            return false
        } catch (e: SAXException) {
            Messages.showMessageDialog(
                project,
                "An error occurred while parsing a project file: ${e.message}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
            return false
        } catch (e: IllegalArgumentException) {
            Messages.showMessageDialog(
                project,
                "XML input can't be null: ${e.message}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
            return false
        }

        val projectName = project.name
        val fileName = pathToFbtFile.substring(pathToFbtFile.lastIndexOf("/")+1)
        val exportPath = Paths.get(exportBasePath.removePrefix("file://"), "MPSProjectNxtExports", projectName, fileName)

        val doctypeRegex = Regex("""<!DOCTYPE[^>]+>""")
        val doctypeMatch = doctypeRegex.find(originalXmlContent)
        val doctypeDeclaration = doctypeMatch?.value ?: ""

        val transformerFactory = TransformerFactory.newInstance()
        val transformer = transformerFactory.newTransformer()
        transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes") // If not done manually, will end up in the wrong place.
        val source = DOMSource(doc)

        try {
            //File(exportPath).writeText("Exported data\n")
            //File(exportPath).appendText(emt)
            Files.createDirectories(exportPath.parent)

            val writer = Files.newBufferedWriter(exportPath)
            writer.write("""<?xml version="1.0" encoding="UTF-8"?>""")
            writer.newLine()

            // Write the DOCTYPE declaration manually if it exists
            if (doctypeDeclaration.isNotEmpty()) {
                writer.write(doctypeDeclaration)
                writer.newLine()
            }
            val result = StreamResult(writer)
            transformer.transform(source, result)
            writer.close()
        } catch (e: IOException) { //bufferedWriter.write()
            Messages.showMessageDialog(
                project,
                "An error occurred during export: ${e.message}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
            return false
        } catch (e: TransformerException) {
            Messages.showMessageDialog(
                project,
                "An error occurred during export: ${e.message}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
            return false
        }
        return true
    }
/*
    private fun convertBasicFB() {

    }

    private fun recursiveFunction(pathToFbtFile: String, itemsToFind: MutableList<String>) {
        val fbtFile = File(pathToFbtFile)

        return

        val dbFactory = DocumentBuilderFactory.newInstance()
        val dBuilder = dbFactory.newDocumentBuilder()
        val xmlInput = InputSource(StringReader(fbtFile.readText()))
        val doc = dBuilder.parse(xmlInput)

        doc.documentElement.normalize()
        val root = doc.documentElement

        val nodeList = root.childNodes

        for (j in 0 until nodeList.length) {
            //itemsToFind.add(nodeList.item(j).toString())
        }


        for (i in 0 until nodeList.length) {
            val node = nodeList.item(i)

            if (node.nodeType == Document.ELEMENT_NODE) {
                val element = node as org.w3c.dom.Element
                itemsToFind.add(element.tagName)
                itemsToFind.add("\n")

                // Access attributes
                val attributes = element.attributes
                for (j in 0 until attributes.length) {
                    val attribute = attributes.item(j)
//                  println("Attribute Node: ${attribute.nodeName} = ${attribute.nodeValue}")
                }

                // Access text content
                println("Content : ${element.textContent}")
            }

    }
*/
}

