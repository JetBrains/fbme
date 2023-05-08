package org.fbme.gradle

import org.xml.sax.Attributes
import org.xml.sax.helpers.DefaultHandler

class PluginXmlSaxHandler : DefaultHandler() {
    private val resultBuilder = StringBuilder()

    private var insideIdeaPlugin = false
    private var insideId = false

    override fun startElement(uri: String?, localName: String?, qName: String?, attributes: Attributes?) {
        when (qName) {
            "idea-plugin" -> insideIdeaPlugin = true
            "id" -> if (insideIdeaPlugin) insideId = true
        }
    }

    override fun endElement(uri: String?, localName: String?, qName: String?) {
        when (qName) {
            "idea-plugin" -> insideIdeaPlugin = false
            "id" -> if (insideIdeaPlugin) insideId = false
        }
    }

    override fun characters(ch: CharArray?, start: Int, length: Int) {
        if (insideId) {
            resultBuilder.append(ch, start, length)
        }
    }

    val pluginId get() = resultBuilder.toString()
}
