package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory

class StandardIec61499ConverterConfiguration(
    override val entryFactory: IEC61499Factory,
    override val stEntryFactory: STFactory
) : Iec61499ConverterConfiguration {

    override fun createBasicFbTypeConverter(arguments: ConverterArguments): BasicFBTypeConverter {
        return BasicFBTypeConverter(arguments)
    }

    override fun createCompositeFbTypeConverter(arguments: ConverterArguments): CompositeFBTypeConverter {
        return CompositeFBTypeConverter(arguments)
    }
}