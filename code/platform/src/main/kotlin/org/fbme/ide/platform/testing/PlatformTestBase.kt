package org.fbme.ide.platform.testing

import jetbrains.mps.project.Project
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.SModelReference
import jetbrains.mps.smodel.SNodePointer
import jetbrains.mps.tool.environment.Environment
import jetbrains.mps.util.JDOMUtil
import org.fbme.ide.iec61499.repository.PlatformIdentifier
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.converter.PlatformConverter
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.parser.IdentifierLocus
import org.fbme.lib.iec61499.parser.RootConverter
import org.fbme.lib.st.STFactory
import org.jdom.Element
import org.jdom.JDOMException
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.AfterClass
import org.junit.BeforeClass
import java.io.IOException
import java.io.InputStream

abstract class PlatformTestBase {

    protected val factory: IEC61499Factory
        get() = repository.iec61499Factory

    protected val stFactory: STFactory
        get() = repository.stFactory

    protected val repository: PlatformRepository
        get() = PlatformRepositoryProvider.getInstance(project)

    fun rootConverterByPath(input: String) =
        createConverter(requireNotNull(this::class.java.getResourceAsStream(input)))

    fun rootConverterByPath(input: String, config: PlatformConverter.DefaultConfigurationFactory) =
        createConverter(requireNotNull(this::class.java.getResourceAsStream(input)), config)

    private fun createConverter(stream: InputStream): RootConverter {
        return createConverter(stream, null)
    }

    private fun createConverter(
        stream: InputStream,
        config: PlatformConverter.DefaultConfigurationFactory?
    ): RootConverter {
        return try {
            val reference = SModelReference(null, SModelId.generate(), SModelName("testModel"))
            val locus = PlatformIdentifierLocus(reference)
            val doc = JDOMUtil.loadDocument(stream)
            if (config != null) {
                RootConverter(config.createConfiguration(repository), locus, doc)
            } else {
                RootConverter(PlatformConverter.STANDARD_CONFIG_FACTORY.createConfiguration(repository), locus, doc)
            }
        } catch (e: JDOMException) {
            throw IllegalStateException(e)
        } catch (e: IOException) {
            throw IllegalStateException(e)
        }
    }

    // FIXME copied from IEC61499ModelFactory
    private class PlatformIdentifierLocus(private val reference: SModelReference) : IdentifierLocus {

        private val path: MutableList<String> = ArrayList()

        override fun onDeclarationEntered(element: Element): Identifier {
            val name = element.getAttributeValue("Name")
            path += name
            val nodeId = PersistenceFacade.getInstance().createNodeId("~" + java.lang.String.join(".", path))
            val pointer = SNodePointer(reference, nodeId)
            return PlatformIdentifier(pointer)
        }

        override fun onDeclarationLeaved() {
            path.removeAt(path.size - 1)
        }
    }

    companion object {

        lateinit var project: Project

        @JvmStatic
        var environment: Environment? = null

        @JvmStatic
        @BeforeClass
        fun initProject() {
            project = environment!!.createEmptyProject()
            PlatformRepositoryProvider.init(project)
        }

        @JvmStatic
        @AfterClass
        fun disposeProject() {
            environment!!.closeProject(project)
        }
    }
}
