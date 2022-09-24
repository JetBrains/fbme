package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.jdom.Element

interface ConverterArguments {
    val element: Element?
    val factory: IEC61499Factory
    val stFactory: STFactory
    val identifierLocus: IdentifierLocus

    fun with(element: Element?): ConverterArgumentsHolder {
        return ConverterArgumentsHolder(factory, stFactory, identifierLocus, element)
    }

    companion object {
        fun create(
            factory: IEC61499Factory,
            stFactory: STFactory,
            locus: IdentifierLocus,
            element: Element?
        ): ConverterArguments {
            return ConverterArgumentsHolder(factory, stFactory, locus, element)
        }
    }
}
