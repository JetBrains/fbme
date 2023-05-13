package org.fbme.ide.platform.converter

import jetbrains.mps.smodel.SNodePointer
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformIdentifier
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.parser.IdentifierLocus
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration
import org.fbme.lib.iec61499.parser.RootConverter
import org.fbme.lib.iec61499.parser.StandardIec61499ConverterConfiguration
import org.jdom.Document
import org.jdom.Element
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

object PlatformConverter {
    @JvmStatic
    fun create(
        owner: PlatformElementsOwner,
        modelReference: SModelReference,
        document: Document
    ): RootConverter {
        val configuration = ourConfigFactory.createConfiguration(owner)
        return RootConverter(configuration, PlatformIdentifierLocus(modelReference), document)
    }

    @JvmStatic
    fun create(
        configuration: Iec61499ConverterConfiguration,
        modelReference: SModelReference,
        document: Document
    ): RootConverter {
        return RootConverter(configuration, PlatformIdentifierLocus(modelReference), document)
    }

    val STANDARD_CONFIG_FACTORY: DefaultConfigurationFactory =
        DefaultConfigurationFactory { owner ->
            StandardIec61499ConverterConfiguration(owner.iec61499Factory, owner.stFactory)
        }

    private var ourConfigFactory = STANDARD_CONFIG_FACTORY

    // Use only for testing purposes
    fun installConfigFactory(factory: DefaultConfigurationFactory) {
        ourConfigFactory = factory
    }

    private class PlatformIdentifierLocus(private val myReference: SModelReference) : IdentifierLocus {
        private val path: MutableList<String> = ArrayList()

        override fun onDeclarationEntered(element: Element): Identifier {
            val name = element.getAttributeValue("Name")
            path.add(name)
            val nodeId = PersistenceFacade.getInstance().createNodeId("~" + path.joinToString("."))
            return PlatformIdentifier(SNodePointer(myReference, nodeId))
        }

        override fun onDeclarationLeaved() {
            path.removeAt(path.size - 1)
        }
    }

    fun interface DefaultConfigurationFactory {
        fun createConfiguration(owner: PlatformElementsOwner): Iec61499ConverterConfiguration
    }
}