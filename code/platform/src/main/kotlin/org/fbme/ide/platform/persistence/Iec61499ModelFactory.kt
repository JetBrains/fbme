package org.fbme.ide.platform.persistence

import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.util.io.FileUtilRt
import jetbrains.mps.classloading.ModuleClassLoader.ModuleClassLoaderIsDisposedException
import jetbrains.mps.extapi.model.CustomPersistenceLoadFacility
import jetbrains.mps.extapi.model.PersistenceProblem
import jetbrains.mps.extapi.model.SModelData
import jetbrains.mps.extapi.model.SModelSimpleHeader
import jetbrains.mps.extapi.persistence.FileDataSource
import jetbrains.mps.ide.MPSCoreComponents
import jetbrains.mps.internal.collections.runtime.ListSequence
import jetbrains.mps.persistence.DataLocationAwareModelFactory
import jetbrains.mps.smodel.SModel.ImportElement
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.util.FileUtil
import jetbrains.mps.util.JDOMUtil
import jetbrains.mps.util.NameUtil
import jetbrains.mps.vfs.IFile
import org.fbme.ide.iec61499.repository.MpsBridge
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.platform.MpsLanguages
import org.fbme.ide.platform.converter.PlatformConverter.create
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.fbme.lib.iec61499.stringify.RootDeclarationPrinter
import org.jdom.Document
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.*
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType
import org.jetbrains.mps.openapi.persistence.datasource.FileExtensionDataSourceType
import org.slf4j.LoggerFactory
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader
import java.io.OutputStream
import java.util.*
import java.util.stream.Collectors

class Iec61499ModelFactory : ModelFactory, DataLocationAwareModelFactory {
    private fun supportedFileExtension(fileExt: String): Boolean {
        return fileExt == FBT_FILE_EXT
                || fileExt == EXT_ADP_FILE_EXT
                || fileExt == ADP_FILE_EXT
                || fileExt == SUB_FILE_EXT
                || fileExt == RES_FILE_EXT
                || fileExt == DEV_FILE_EXT
                || fileExt == SYS_FILE_EXT
                || fileExt == SEG_FILE_EXT
    }

    override fun supports(dataSource: DataSource): Boolean {
        return MpsBridge.isLoaded && dataSource is FileDataSource && dataSource.file.name == HEADER_FILE
    }

    @Throws(UnsupportedDataSourceException::class, ModelSaveException::class, IOException::class)
    override fun save(model: SModel, source: DataSource) {
        IEC61499LoadFacility(this, source as MultiStreamDataSource).writeModel(
            SModelSimpleHeader(model.reference),
            (model as CustomPersistenceModelWithHeader0).modelData
        )
    }

    override fun getType() = TYPE

    override fun getPreferredDataSourceTypes(): List<DataSourceType> {
        return Arrays.asList(DST, RecursiveFolderDataSource.TYPE)
    }

    @Throws(UnsupportedDataSourceException::class, ModelCreationException::class)
    override fun create(source: DataSource, modelName: SModelName, vararg options: ModelLoadingOption): SModel {
        var source = source
        val headerFile = extractFile(source)
        source = RecursiveFolderDataSource(headerFile.parent!!) { file: IFile ->
            file.name == HEADER_FILE || supportedFileExtension(
                FileUtilRt.getExtension(file.name)
            )
        }
        val modelId = SModelId.generate()
        if (modelName.value.isNullOrEmpty()) {
            throw ModelCreationException(
                "Can not create model from " + headerFile.parent + " with empty name",
                emptyList()
            )
        }
        val ref = PersistenceFacade.getInstance().createModelReference(null, modelId, modelName)
        val header = Iec61499ModelHeader(ref, emptyList())
        val facility = IEC61499LoadFacility(this, source as MultiStreamDataSource)
        return CustomPersistenceModelWithHeader0(header, source, facility)
    }

    @Throws(UnsupportedDataSourceException::class, ModelLoadException::class)
    override fun load(source: DataSource, vararg options: ModelLoadingOption): SModel {
        var source = source
        if (source.type == DST && source is FileDataSource) {
            val headerFile = extractFile(source)
            source = RecursiveFolderDataSource(headerFile.parent!!) { file: IFile ->
                file.name == HEADER_FILE || supportedFileExtension(
                    FileUtilRt.getExtension(file.name)
                )
            }
        }
        val facility = IEC61499LoadFacility(this, source as MultiStreamDataSource)
        return CustomPersistenceModelWithHeader0.readHeaderAndCreate(source, facility)
    }

    @Throws(UnsupportedDataSourceException::class)
    private fun extractFile(source: DataSource): IFile {
        assertSupports(source)
        return (source as FileDataSource).file
    }

    @Throws(UnsupportedDataSourceException::class)
    private fun assertSupports(source: DataSource) {
        if (!supports(source)) {
            throw UnsupportedDataSourceException(source)
        }
    }

    @Throws(IOException::class)
    override fun needsUpgrade(source: DataSource): Boolean {
        return false
    }

    override fun getNodeLocation(node: SNode): DataSource? {
        val source = node.model!!.source as RecursiveFolderDataSource
        var packageName = node.getProperty(SNodeUtil.property_BaseConcept_virtualPackage)
        if (packageName == null) {
            packageName = ""
        } else {
            packageName += "."
        }
        val location = packageName + node.name + "." + getExtensionOfSource(node)
        return source.getStreamByName(location)
    }

    override fun getMetaInfoLocation(model: SModel): DataSource {
        val source = model.source as RecursiveFolderDataSource
        return source.getStreamByNameOrCreate(HEADER_FILE)
    }

    override fun getDataLocation(model: SModel): DataSource {
        return model.source
    }

    class IEC61499LoadFacility(
        private val factory: Iec61499ModelFactory,
        private val dataSource: MultiStreamDataSource
    ) : CustomPersistenceLoadFacility {

        override fun getModelFactory() = factory
        override fun getSource() = dataSource

        private fun createEmptyModel(header: Iec61499ModelHeader): jetbrains.mps.smodel.SModel {
            val modelData = jetbrains.mps.smodel.SModel(header.modelReference)
            modelData.addLanguage(MpsLanguages.ST)
            modelData.addLanguage(MpsLanguages.IEC_61499)
            modelData.addLanguage(MpsLanguages.RICH_EDITING)
            for (imp in ListSequence.fromList(header.imports)) {
                modelData.addModelImport(ImportElement(imp))
            }
            return modelData
        }

        @Throws(ModelLoadException::class)
        override fun readHeader(): SModelSimpleHeader {
            return try {
                Iec61499ModelHeader.load(
                    dataSource.getStreamByName(HEADER_FILE)!!.openInputStream()
                )
            } catch (e: IOException) {
                throw ModelLoadException("Can't load model", emptyList(), e)
            }
        }

        @Throws(ModelLoadException::class)
        override fun readModel(header: SModelSimpleHeader): SModelData {
            return try {
                val modelData = createEmptyModel(header as Iec61499ModelHeader)
                for (source in dataSource.subStreams.collect(Collectors.toList())) {
                    try {
                        val fileExt = FileUtil.getExtension(source.streamName)
                        val fqName = com.intellij.openapi.util.io.FileUtil.getNameWithoutExtension(source.streamName)
                            .replace('/', '.')
                        val reader = BufferedReader(InputStreamReader(source.openInputStream()))
                        try {
                            val doc = JDOMUtil.loadDocument(reader)
                            val node = convertRootNode(header.modelReference, doc, fileExt)
                            if (node != null) {
                                val virtualPackage = NameUtil.namespaceFromLongName(fqName)
                                if (!virtualPackage.isNullOrEmpty()) {
                                    node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
                                }
                                modelData.addRootNode(node)
                            }
                        } finally {
                            reader.close()
                        }
                    } catch (e: Exception) {
                        throw IOException("cannot read model" + dataSource.location, e)
                    }
                }
                modelData
            } catch (e: IOException) {
                LOG.error("Exception raised during load", e)
                throw ModelLoadException("Exception during load", emptyList(), e)
            }
        }

        @Throws(ModelSaveException::class)
        override fun writeModel(header: SModelSimpleHeader, data: SModelData) {
            if (data !is jetbrains.mps.smodel.SModel) {
                saveFailed("Malformed internal format of model data for model: " + data.modelName.longName)
            }
            val model = data as jetbrains.mps.smodel.SModel
            try {
                val headerFile = dataSource.getStreamByNameOrCreate(HEADER_FILE)
                var backup: ByteArray? = null
                if (headerFile.exists()) {
                    val headerIS = headerFile.openInputStream()
                    backup = try {
                        headerIS.readAllBytes()
                    } finally {
                        headerIS.close()
                    }
                }
                try {
                    var headerOS: OutputStream? = null
                    try {
                        headerOS = headerFile.openOutputStream()
                        val importedModels = model.importedModels()
                        val richHeader = Iec61499ModelHeader(
                            header.modelReference,
                            importedModels.map { it.modelReference }
                        )
                        richHeader.save(headerOS)
                    } finally {
                        headerOS?.close()
                    }
                } catch (exception: ModuleClassLoaderIsDisposedException) {
                    if (backup != null) {
                        val os = headerFile.openOutputStream()
                        os.write(backup)
                        os.close()
                    }
                    LOG.error("Can't save IEC 61499 model. Loader is disposed. Please, restart MPS", exception)
                    return
                }

                // Collect tracked files
                val trackedSources: MutableList<StreamDataSource> = dataSource.subStreams.collect(Collectors.toList())
                trackedSources.remove(dataSource.getStreamByName(HEADER_FILE))

                val repository: SRepository = ApplicationManager.getApplication()
                    .getComponent(MPSCoreComponents::class.java).moduleRepository
                val platformRepository = PlatformRepository(repository)

                val errors = arrayListOf<SModel.Problem>()
                //  Write nodes to xml files
                for (rootNode in model.rootNodes) {
                    val document = try {
                        val declaration = platformRepository.getAdapter(rootNode, Declaration::class.java)
                        RootDeclarationPrinter(declaration).print()
                    } catch (e: Exception) {
                        errors += PersistenceProblem(SModel.Problem.Kind.Save, e.message, rootNode.name, true)
                        continue
                    }
                    val folderName =
                        rootNode.getProperty(SNodeUtil.property_BaseConcept_virtualPackage).orEmpty().replace(".", "/")
                    val fileLocalName = rootNode.name + "." + getExtensionOfSource(rootNode, platformRepository)
                    val fileName = if (folderName.isEmpty()) fileLocalName else "$folderName/$fileLocalName"
                    val source = dataSource.getStreamByNameOrCreate(fileName)
                    trackedSources.remove(source)
                    val stream = source.openOutputStream()
                    try {
                        JDOMUtil.writeDocument(document, stream)
                    } finally {
                        FileUtil.closeFileSafe(stream)
                    }
                }

                // Remove deleted/renamed files
                for (file in trackedSources) {
                    file.delete()
                }

                if (errors.isNotEmpty()) {
                    throw ModelSaveException("Multiple errors raised during save", errors, null)
                }
            } catch (e: IOException) {
                LOG.error("Exception raised during save", e)
                throw ModelSaveException("Exception raised during save", emptyList(), e)
            }
        }
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(Iec61499ModelFactory::class.java)

        const val FBT_FILE_EXT = "fbt"
        const val ADP_FILE_EXT = "adp"
        const val EXT_ADP_FILE_EXT = "eadp"
        const val SUB_FILE_EXT = "app"
        const val RES_FILE_EXT = "res"
        const val DEV_FILE_EXT = "dev"
        const val SEG_FILE_EXT = "seg"
        const val SYS_FILE_EXT = "sys"
        const val HEADER_FILE_EXT = "iec61499"
        const val HEADER_FILE = "header.iec61499"

        @JvmStatic

        val DST: DataSourceType = FileExtensionDataSourceType.of(HEADER_FILE_EXT)

        @JvmStatic
        val TYPE = ModelFactoryType { "IEC61499 Model" }

        /*package*/
        @Throws(ModelSaveException::class)
        fun saveFailed(errorMessage: String) {
            throw ModelSaveException(
                "Failed to save model: $errorMessage", setOf<SModel.Problem>(
                    PersistenceProblem(
                        SModel.Problem.Kind.Save, errorMessage, null, true
                    )
                )
            )
        }

        private fun convertRootNode(reference: SModelReference, doc: Document, fileExtension: String?): SNode? {
            val owner = PlatformElementsOwner()
            val converter = create(owner, reference, doc)
            return when (fileExtension) {
                FBT_FILE_EXT -> (converter.convertFBType() as PlatformElement).node
                EXT_ADP_FILE_EXT -> (converter.convertExtendedAdapterType() as PlatformElement).node
                ADP_FILE_EXT -> (converter.convertAdapterType() as PlatformElement).node
                SUB_FILE_EXT -> (converter.convertSubapplicationType() as PlatformElement).node
                RES_FILE_EXT -> (converter.convertResourceType() as PlatformElement).node
                DEV_FILE_EXT -> (converter.convertDeviceType() as PlatformElement).node
                SEG_FILE_EXT -> (converter.convertSegmentType() as PlatformElement).node
                SYS_FILE_EXT -> (converter.convertSystemConfiguration() as PlatformElement).node
                else -> null
            }
        }

        fun getExtensionOfSource(node: SNode, owner: PlatformElementsOwner = PlatformElementsOwner()): String? {
            val element = owner.getAdapter(node, RootElement::class.java)
            return when (element) {
                is FBTypeDeclaration -> FBT_FILE_EXT
                is ExtendedAdapterTypeDeclaration -> EXT_ADP_FILE_EXT
                is AdapterTypeDeclaration -> ADP_FILE_EXT
                is SubapplicationTypeDeclaration -> SUB_FILE_EXT
                is ResourceTypeDeclaration -> RES_FILE_EXT
                is DeviceTypeDeclaration -> DEV_FILE_EXT
                is SegmentTypeDeclaration -> SEG_FILE_EXT
                is SystemDeclaration -> SYS_FILE_EXT
                else -> null
            }
        }
    }
}