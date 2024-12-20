package org.fbme.lib.iec61131.converter

import org.fbme.lib.iec61131.model.Iec61131Xml
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType

fun getDefaultValue(type: DataType): String {
    return when (type) {
        ElementaryType.BOOL -> "FALSE"
        ElementaryType.INT -> "0"
        ElementaryType.STRING -> ""
        ElementaryType.TIME -> "0ms"
        else -> throw RuntimeException("Not implemented")
    }
}

fun getFbdInfo(xmlPou: Iec61131Xml.Pou): FbdInfo {

    val firstBody = xmlPou.bodyList.getOrNull(0)
        ?: throw Iec61131ConverterException(xmlPou, "pou has no body", null)
    val fbd = firstBody.fbd
        ?: throw Iec61131ConverterException(xmlPou, "non fbd bodies are not supported yet", null)
    val pouInterface = xmlPou.pouInterface
        ?: throw Iec61131ConverterException(xmlPou, "pou has no interface", null)
    return FbdInfo(xmlPou.name, fbd, pouInterface)
}
