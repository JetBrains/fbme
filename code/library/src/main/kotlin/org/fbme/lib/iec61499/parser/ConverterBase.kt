package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.jdom.Element

abstract class ConverterBase(arguments: ConverterArguments) : ConverterArguments {
    override val factory: IEC61499Factory
    override val stFactory: STFactory
    override val identifierLocus: IdentifierLocus
    override val element: Element?
    protected fun unescapeXML(text: String?): String? {
        var text = text ?: return null
        text = text.replace("&#10;", "\n")
        text = text.replace("&#34;", "\"")
        text = text.replace("&#38;", "&")
        text = text.replace("&#39;", "'")
        text = text.replace("&#60;", "<")
        text = text.replace("&#62;", ">")
        return text
    }

    init {
        factory = arguments.factory
        stFactory = arguments.stFactory
        identifierLocus = arguments.identifierLocus
        element = arguments.element
    }
}