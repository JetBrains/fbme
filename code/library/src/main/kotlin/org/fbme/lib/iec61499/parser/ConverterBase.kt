package org.fbme.lib.iec61499.parser

abstract class ConverterBase(arguments: ConverterArguments) : ConverterArguments {

    final override val factory = arguments.factory
    final override val stFactory = arguments.stFactory
    final override val identifierLocus = arguments.identifierLocus
    final override val element = arguments.element

    protected fun unescapeXML(text: String?): String? {
        text ?: return null
        return text
            .replace("&#10;", "\n")
            .replace("&#34;", "\"")
            .replace("&#38;", "&")
            .replace("&#39;", "'")
            .replace("&#60;", "<")
            .replace("&#62;", ">")
            .replace("&#xD;", "")
            .replace("&#xA;", "")
    }
}
