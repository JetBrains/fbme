package org.fbme.integration.nxt.importer

import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.platform.converter.PlatformConverter.DefaultConfigurationFactory
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.parser.BasicFBTypeConverter
import org.fbme.lib.iec61499.parser.CompositeFBTypeConverter
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration
import org.fbme.lib.st.STFactory

class NxtImporterConfiguration(override val entryFactory: IEC61499Factory, override val stEntryFactory: STFactory) :
    Iec61499ConverterConfiguration {

    override fun createBasicFbTypeConverter(arguments: ConverterArguments): BasicFBTypeConverter {
        return BasicFbTypeNxtImporter(arguments)
    }

    override fun createCompositeFbTypeConverter(arguments: ConverterArguments): CompositeFBTypeConverter {
        return CompositeFbTypeNxtImporter(arguments)
    }

    companion object {
        @JvmField
        val FACTORY = DefaultConfigurationFactory { owner: PlatformElementsOwner ->
            NxtImporterConfiguration(owner.iec61499Factory, owner.stFactory)
        }
    }
}