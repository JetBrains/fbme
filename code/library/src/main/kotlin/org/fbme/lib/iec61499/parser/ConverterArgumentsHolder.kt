package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.jdom.Element

class ConverterArgumentsHolder(
    override val factory: IEC61499Factory,
    override val stFactory: STFactory,
    override val identifierLocus: IdentifierLocus,
    override val element: Element?
) : ConverterArguments
