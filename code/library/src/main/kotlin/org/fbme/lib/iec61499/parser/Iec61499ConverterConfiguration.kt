package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory

interface Iec61499ConverterConfiguration {
    val entryFactory: IEC61499Factory
    val stEntryFactory: STFactory
    fun createBasicFbTypeConverter(arguments: ConverterArguments): BasicFBTypeConverter
    fun createCompositeFbTypeConverter(arguments: ConverterArguments): CompositeFBTypeConverter
}