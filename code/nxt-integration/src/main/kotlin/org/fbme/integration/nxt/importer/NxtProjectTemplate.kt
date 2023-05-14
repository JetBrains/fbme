package org.fbme.integration.nxt.importer

import fbme.integration.nxt.NxtIntegrationIcons
import jetbrains.mps.extapi.model.SModelSimpleHeader
import jetbrains.mps.internal.collections.runtime.ListSequence
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.util.FileUtil
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
import java.io.IOException
import java.util.*


class NxtImportProjectTemplate : Iec61499ProjectTemplate(
    NxtImportSystemConfigSolutionSettings("NewModel"),
    "Nxt Project",
    "Import project from NxtStudio",
    NxtIntegrationIcons.importProject,
    null
) {
    override fun initModel(repository: PlatformRepository, model: SModel): PlatformElement {
        val settings = settings as NxtImportSystemConfigSolutionSettings
        val nxtImportDirectory = settings.getNxtImportLocation()
        val modelId = SModelId.generate()
        val modelName = settings.moduleName
        val ref = PersistenceFacade.getInstance().createModelReference(null, modelId, modelName)
        val header: SModelSimpleHeader = Iec61499ModelHeader(ref, emptyList())
        val files = listOf(*File(nxtImportDirectory).listFiles()!!)
        try {
            readModel(header, files, model)
        } catch (e: ModelLoadException) {
        }
        val first = model.rootNodes.firstOrNull()
        if (first != null) {
            return repository.getAdapter(first, PlatformElement::class.java)
        }
        val result = repository.iec61499Factory.createBasicFBTypeDeclaration(null)
        result.name = "EmptyBasicFB"
        return result as PlatformElement
    }

    @Throws(ModelLoadException::class)
    fun readModel(header: SModelSimpleHeader, files: List<File>, m: SModel) {
        try {
            for (file in ListSequence.fromList(files)) {
                try {
                    val fileExt = FileUtil.getExtension(file.name)
                    val fqName =
                        com.intellij.openapi.util.io.FileUtil.getNameWithoutExtension(file).replace('/', '.')
                    if (!supportedFileExtension(fileExt)) {
                        continue
                    }
                    BufferedReader(FileReader(file)).use { reader ->
                        val doc = JDOMUtil.loadDocument(reader)
                        val node = convertRootNode(header.modelReference, doc, fileExt)
                        if (node != null) {
                            val virtualPackage = NameUtil.namespaceFromLongName(fqName)
                            if (virtualPackage != null && virtualPackage.isNotEmpty()) {
                                node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
                            }
                            SModelOperations.addRootNode(m, node)
                        }
                    }
                } catch (e: Exception) {
                    throw IOException("cannot read model for nxt project import", e)
                }
            }
        } catch (e: IOException) {
            throw ModelLoadException("Exception during load", emptyList(), e)
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

    private fun supportedFileExtension(fileExt: String?): Boolean {
        return fileExt == Iec61499ModelFactory.FBT_FILE_EXT
                || fileExt == Iec61499ModelFactory.ADP_FILE_EXT
                || fileExt == Iec61499ModelFactory.SUB_FILE_EXT
                || fileExt == Iec61499ModelFactory.RES_FILE_EXT
                || fileExt == Iec61499ModelFactory.DEV_FILE_EXT
                || fileExt == Iec61499ModelFactory.SYS_FILE_EXT
                || fileExt == Iec61499ModelFactory.SEG_FILE_EXT
    }
}
