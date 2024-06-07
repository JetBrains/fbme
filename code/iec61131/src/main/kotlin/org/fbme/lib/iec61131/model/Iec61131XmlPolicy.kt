package org.fbme.lib.iec61131.model

import nl.adaptivity.xmlutil.QName
import nl.adaptivity.xmlutil.serialization.*
import nl.adaptivity.xmlutil.serialization.structure.SafeParentInfo


object Iec61131XmlPolicy : DefaultXmlSerializationPolicy(
    false,
    encodeDefault = XmlSerializationPolicy.XmlEncodeDefault.NEVER,

    // no error if can't map tag to any dto
    unknownChildHandler = UnknownChildHandler { input, inputKind, _, _, _ ->
        emptyList()
    }
) {

    // naming policy
    override fun effectiveName(
        serializerParent: SafeParentInfo,
        tagParent: SafeParentInfo,
        outputKind: OutputKind,
        useName: XmlSerializationPolicy.DeclaredNameInfo
    ): QName {
        val qnameWithoutNamespace = useName.annotatedName // name via annotation
            ?: serialUseNameToQName(useName, tagParent.namespace) // variable name in father

        // both variables "body" and "bodyList" parsing into "<body/>"
        val name = qnameWithoutNamespace.localPart.removeSuffix("List")

        return QName("http://www.plcopen.org/xml/tc6_0201", name, "default-prefix")
    }


}
