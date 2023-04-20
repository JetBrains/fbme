package org.fbme.lib.iec61499.parser

abstract class ConverterBase(arguments: ConverterArguments) : ConverterArguments {

    final override val factory = arguments.factory
    final override val stFactory = arguments.stFactory
    final override val identifierLocus = arguments.identifierLocus
    final override val element = arguments.element

    protected fun unescapeXML(text: String?): String? {
        var text = text ?: return null
        text = text.replace("&#10;", "\n")
        text = text.replace("&#34;", "\"")
        text = text.replace("&#38;", "&")
        text = text.replace("&#39;", "'")
        text = text.replace("&#60;", "<")
        text = text.replace("&#62;", ">")
        text = text.replace("&#xD;", "")
        text = text.replace("&#xA;", "")
        return text
    }
}
