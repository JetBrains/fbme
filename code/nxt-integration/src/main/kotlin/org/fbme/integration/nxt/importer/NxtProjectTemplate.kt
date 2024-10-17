package org.fbme.integration.nxt.importer

import com.intellij.notification.Notification
import com.intellij.notification.NotificationType
import com.intellij.notification.Notifications
import com.intellij.openapi.project.Project
import fbme.integration.nxt.NxtIntegrationIcons
import jetbrains.mps.extapi.model.SModelSimpleHeader
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.util.JDOMUtil
import jetbrains.mps.util.NameUtil
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.platform.converter.PlatformConverter.create
import org.fbme.ide.platform.persistence.Iec61499ModelFactory
import org.fbme.ide.platform.persistence.Iec61499ModelHeader
import org.fbme.ide.platform.projectWizard.Iec61499ProjectTemplate
import org.jdom.Document
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.ModelLoadException
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.io.BufferedReader
import java.io.File
import java.io.FileReader
import java.util.*
import kotlin.collections.ArrayDeque

class NxtImportProjectTemplate : Iec61499ProjectTemplate(
    NxtImportSystemConfigSolutionSettings("NewModel"),
    "Nxt Project",
    "Import project from NxtStudio",
    NxtIntegrationIcons.importProject,
    null
) {
    override fun initModel(project: Project, repository: PlatformRepository, model: SModel): PlatformElement {
        val settings = settings as NxtImportSystemConfigSolutionSettings
        val nxtImportDirectory = settings.getNxtImportLocation()
        val modelId = SModelId.generate()
        val modelName = settings.moduleName
        val ref = PersistenceFacade.getInstance().createModelReference(null, modelId, modelName)
        val header: SModelSimpleHeader = Iec61499ModelHeader(ref, emptyList())
        val entries = loadEntries(locateRootDirectory(File(nxtImportDirectory)))
        val errorEntries = mutableSetOf<DocumentEntry>()
        for (entry in entries) {
            try {
                loadRootFromFile(header, entry, model)
            } catch (e: Exception) {
                errorEntries += entry
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
    fun loadRootFromFile(header: SModelSimpleHeader, entry: DocumentEntry, model: SModel) {
        BufferedReader(FileReader(entry.file)).use { reader ->
            val doc = JDOMUtil.loadDocument(reader)
            val node = convertRootNode(header.modelReference, doc, entry.file.extension)
            if (node != null) {
                val virtualPackage = NameUtil.namespaceFromLongName(entry.name)
                if (virtualPackage != null && virtualPackage.isNotEmpty()) {
                    node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
                }
                model.addRootNode(node)
            }
        }
    }

    private fun convertRootNode(reference: SModelReference, doc: Document, fileExtension: String?): SNode? {
        val owner = PlatformElementsOwner()
        val configuration = NxtImporterConfiguration.FACTORY.createConfiguration(owner)
        val converter = create(configuration, reference, doc)
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

    private fun locateRootDirectory(nxtImportDirectory: File): File {
        val files = nxtImportDirectory.list() ?: return nxtImportDirectory
        if (files.contains("IEC61499") && files.any { it.endsWith("sln") }) {
            return nxtImportDirectory.resolve("IEC61499")
        }
        return nxtImportDirectory
    }

    private fun loadEntries(rootDirectory: File): Sequence<DocumentEntry> = sequence {
        val queue = ArrayDeque<DocumentEntry>()
        queue.add(DocumentEntry("", rootDirectory))
        while (queue.isNotEmpty()) {
            val entry = queue.removeFirst()
            if (entry.file.isFile && supportedFileExtension(entry.file.extension)) yield(entry)
            queue.addAll(entry.nestedDocuments)
        }
    }


    data class DocumentEntry(val name: String, val file: File) {

        private fun nestedName(nestedName: String) = if (name.isEmpty()) nestedName else "$name.$nestedName"

        val nestedDocuments
            get() = file.listFiles()?.map { DocumentEntry(nestedName(it.nameWithoutExtension), it) } ?: emptyList()
    }
}
