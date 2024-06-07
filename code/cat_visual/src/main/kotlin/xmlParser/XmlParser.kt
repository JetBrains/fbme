package xmlParser

import canvas.items.model.Input
import canvas.items.model.JsonCanvasModel
import canvas.items.model.Output
import org.w3c.dom.Document
import org.w3c.dom.Element
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory

class XmlParser(
    private val path: String,
) {

    private val documentBuilder = DocumentBuilderFactory
        .newInstance()
        .newDocumentBuilder()

    fun parse(): List<JsonCanvasModel> {
        val parsedElements = mutableListOf<JsonCanvasModel>()
        val document = parseDocument(path)
        val system = document.documentElement
        val catTypes = system.childNodes
        for (i in 0 until catTypes.length) {
            val catType = catTypes.item(i)
            if (catType.nodeType != Document.ELEMENT_NODE) {
              continue
            }
            val catTypeNode = catType as Element
            val nameAttribute = catTypeNode.getAttribute(AttributeName.NAME.value)
            println(nameAttribute)
            val instances = catTypeNode.childNodes
            for (j in 0 until instances.length) {
               val instance =  instances.item(j)
                if (instance.nodeType != Document.ELEMENT_NODE) {
                    continue
                }
                parsedElements.add(
                    toJsonCanvasModel(name = nameAttribute)
                )
                val configName = getConfigName(nameAttribute)
                parseSubBlock(parseDocument(configName), parsedElements)
            }
        }
        return parsedElements
    }


    private fun getConfigName(catName: String): String {
        return "$PATH_CAT_BLOCKS_CONFIG/$catName.cfg"
    }

    private fun parseSubBlock(
        document: Document,
        parsedElements: MutableList<JsonCanvasModel>
    ) {
        val system = document.documentElement
        val catTypes = system.childNodes
        for (i in 0 until catTypes.length) {
            val catType = catTypes.item(i)
            if (catType.nodeType != Document.ELEMENT_NODE) {
                continue
            }
            val catTypeNode = catType as Element
            val tagName = catTypeNode.tagName
            if (tagName != "SubCAT") {
                continue
            }
            val nameAttribute = catTypeNode.getAttribute(AttributeName.TYPE.value)
            println(nameAttribute)
            parsedElements.add(toJsonCanvasModel(name = nameAttribute))
            val configName = getConfigName(nameAttribute)
            parseSubBlock(parseDocument(configName), parsedElements)
        }
    }

    private fun toJsonCanvasModel(
        id: String = "e58ed763-928c-4155-bee9-fdbaaadc15f3",
        name: String,
        content: String = "text",
        inputs: List<Input> = listOf(),
        outputs: List<Output> = listOf(),
    ): JsonCanvasModel =
        JsonCanvasModel(
            x = 0f,
            y = 0f,
            content = content,
            type = name,
            id = id,
            inputs = inputs,
            outputs = outputs,
        )

    private fun parseDocument(path: String): Document {
        return documentBuilder.parse(File(path))
    }

    enum class AttributeName(val value: String) {
        NAME("Name"),
        NAMESPACE("Namespace"),
        ID("ID"),
        TYPE("Type")
    }

    companion object {
        private const val PATH_CONFIG = "src/main/kotlin/config"
        private const val PATH_CAT_BLOCKS_CONFIG = "$PATH_CONFIG/catBlocks"
        private const val PATH_HMI_CONFIG = "$PATH_CONFIG/hmi"
    }
}