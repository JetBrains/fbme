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
import org.w3c.dom.Element
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
        fun recursiveFileSearcher(
            dir: VirtualFile?,
            projectFilePaths: MutableList<String>,
            fileSuffix: String = ".fbt"
        ) {
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
        val doc: Document // Maybe need a '!' at the end.

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
        val fileName = pathToFbtFile.substring(pathToFbtFile.lastIndexOf("/") + 1)
        val exportPath =
            Paths.get(exportBasePath.removePrefix("file://"), "MPSProjectNxtExports", projectName, fileName)

        val doctypeRegex = Regex("""<!DOCTYPE[^>]+>""") // <!DOCTYPE FBType SYSTEM "../LibraryElement.dtd"> in EAE
        val doctypeMatch = doctypeRegex.find(originalXmlContent)
        val doctypeDeclaration = doctypeMatch?.value ?: ""

        val transformerFactory = TransformerFactory.newInstance()
        val transformer = transformerFactory.newTransformer()
        transformer.setOutputProperty(OutputKeys.INDENT, "no")
        transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2")
        transformer.setOutputProperty(
            OutputKeys.OMIT_XML_DECLARATION,
            "yes"
        ) // If not done manually later, will end up in the wrong place in the xml.

        val docConverted = convertBasicFB(doc)
        val source = DOMSource(docConverted)

        try {
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

    private fun convertBasicFB(doc: Document): Document {

        // Most likely edits doc in place
        val root = doc.documentElement

        root.setAttribute("GUID", "ccbf2b60-58fa-4446-a3fb-00066c5e49e1") // TODO
        root.setAttribute("Comment","Basic Function Block Type") // TODO

        // Takes care of indentation and line breaking. TODO; doesn't work as intended with the indentations...
        fun insertElement(newElement: Element, refElement: Element, parentElement: Element) {
            parentElement.insertBefore(newElement, refElement)
            parentElement.insertBefore(doc.createTextNode("\n"), refElement)
            val indentElement = doc.createTextNode("  ")
            var placeHolderElement = refElement
            var scoutElement: Element
            while (true) {
                parentElement.insertBefore(indentElement, refElement)
                scoutElement = placeHolderElement.parentNode as Element
                if (scoutElement == root) { //Node.DOCUMENT_NODE
                    break
                }
                placeHolderElement = scoutElement
            }
        }

        // Identification Standard
        val interfaceListNode = root.getElementsByTagName("InterfaceList").item(0)
        val interfaceListElement = interfaceListNode as Element // org.w3c.dom.Element
        val idElement = doc.createElement("Identification")
        idElement.setAttribute("Standard", "61499-2") // TODO
        insertElement(idElement, interfaceListElement, root)

        // VersionInfo
        val versionInfoNode = doc.createElement("VersionInfo")
        val versionInfoElement = versionInfoNode as Element
        versionInfoElement.setAttribute("Organization", "Schneider Electric") // TODO....
        versionInfoElement.setAttribute("Version", "0.0")
        versionInfoElement.setAttribute("Author", "Unknown")
        versionInfoElement.setAttribute("Date", "xx/xx/xxxx")
        versionInfoElement.setAttribute("Remarks", "Template")
        insertElement(versionInfoElement, interfaceListElement, root)

        // Attribute (Add an element named "Attribute" under element "BasicFB")
        val basicFBNode = root.getElementsByTagName("BasicFB").item(0)
        val basicFBElement = basicFBNode as Element
        val eccNode = basicFBElement.getElementsByTagName("ECC").item(0)
        val eccElement = eccNode as Element
        val elementNamedAttribute = doc.createElement("Attribute")
        elementNamedAttribute.setAttribute("Name", "FBType.Basic.Algorithm.Order")

        val algorithmNodeList = basicFBElement.getElementsByTagName("Algorithm")
        val algorithmNameSet = StringBuilder()
        for (i in 0 until algorithmNodeList.length) {
            val algorithmNode = algorithmNodeList.item(i)
            val algorithmElement = algorithmNode as Element
            val algorithmName: String = algorithmElement.getAttributeNode("Name").value
            algorithmNameSet.append(algorithmName)
            algorithmNameSet.append(",")
        }
        val charRange = IntRange(algorithmNameSet.length-1, algorithmNameSet.length-1)
        val algorithmNameSetStr = algorithmNameSet.toString().removeRange(charRange)
        elementNamedAttribute.setAttribute("Value", algorithmNameSetStr) // No sure if in the correct order, maybe TODO...
        insertElement(elementNamedAttribute, eccElement, basicFBElement)

        // TODO: add bezierpoints to ECTransitions.

        // TODO: complete rework of the algorithm section

        /*
        val basicFBList = root.getElementsByTagName("InterfaceList")

        for (i in 0 until basicFBList.length) {
            val basicFBNode = basicFBList.item(i)
            if (basicFBNode.nodeType == org.w3c.dom.Node.ELEMENT_NODE) {
                val basicFBElement = basicFBNode as org.w3c.dom.Element
                val idElement = doc.createElement("Identification")
                idElement.setAttribute("Standard", "61499-2")
                basicFBElement.appendChild(idElement)
                //basicFBElement.insertBefore(idElement)
            }
        }
        */

        return doc
    }

    private fun x(pathToFbtFile: String, itemsToFind: MutableList<String>) {
        val fbtFile = File(pathToFbtFile)

        val dbFactory = DocumentBuilderFactory.newInstance()
        val dBuilder = dbFactory.newDocumentBuilder()
        val xmlInput = InputSource(StringReader(fbtFile.readText()))
        val doc = dBuilder.parse(xmlInput)

        doc.documentElement.normalize()
        val root = doc.documentElement

        val nodeList = root.childNodes

        for (j in 0 until nodeList.length) {
            //itemsToFind.add(nodeList.item(j).toString())
            continue
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
    }
}